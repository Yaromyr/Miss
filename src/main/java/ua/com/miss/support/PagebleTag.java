package ua.com.miss.support;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;

/**
 * Created by yaromyryaremko on 28.06.16.
 */
public class PagebleTag extends SimpleTagSupport{
    private final StringWriter sw = new StringWriter();

    private final static int VISIBLE_PAGES = 5;

    private int pageNumber;

    private int pageSize;

    private int totalPages;

    private final static String amper = "&";
    private final static String equal = "=";

    private Sort sort;

    public void setPage(Page<?> page) {
        pageNumber = page.getNumber()+1;
        pageSize = page.getSize();
        totalPages = page.getTotalPages();
        sort = page.getSort();
    }

    public void doTag() throws JspException, IOException {
        if(totalPages>1){
            JspWriter out = getJspContext().getOut();
            sw.append("<ul class=\"pagination pagination-sm\">");
            int start = (pageNumber-VISIBLE_PAGES/2) >= 1 ? (pageNumber-VISIBLE_PAGES/2) : 1;
            int finish = (pageNumber+VISIBLE_PAGES/2) <= totalPages ? (pageNumber+VISIBLE_PAGES/2) : totalPages;
            start = (finish - start < VISIBLE_PAGES) ? (finish - VISIBLE_PAGES + 1) : start;
            start = start <= 0 ? 1 : start;
            finish = (finish - start) < VISIBLE_PAGES ? start + VISIBLE_PAGES - 1 : finish;
            finish = finish > totalPages ? totalPages : finish;
            if(start!=1)buildFirsPageCell(start);
            buildPageLine(start, finish);
            if(finish!=totalPages)buildLastPageCell(finish);
            sw.append("</ul>");
            out.println(sw.toString());
        }
    }

    private void addAllParameters(){
        PageContext pageContext = (PageContext) getJspContext();
        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
        Map<String, String[]> map = request.getParameterMap();
        for(Map.Entry<String, String[]> entry : map.entrySet()){
            if(!(entry.getKey().equals("page")) && !(entry.getKey().equals("size"))){
                for(String value : entry.getValue()){
                    if(!(entry.getKey().equals("page")||entry.getKey().equals("size"))){
                    sw.append(amper);
                    sw.append(entry.getKey());
                    sw.append(equal);
                    sw.append(value);
                    }
                }
            }

        }
    }

    private void buildLastPageCell(int finish) {
        if(finish!=totalPages-1)sw.append("<li class=\"dots\"><a>...</a></li>");
        sw.append("<li><a href=\"?page=");
        sw.append(String.valueOf(totalPages));
        sw.append("&size=");
        sw.append(String.valueOf(pageSize));
        addAllParameters();
        sw.append("\">");
        sw.append(String.valueOf(totalPages));
        sw.append("</a></li>");
    }

    private void buildFirsPageCell(int start) {
        sw.append("<li><a href=\"?page=1&size=");
        sw.append(String.valueOf(pageSize));
        addAllParameters();
        sw.append("\">1</a></li>");
        if(start!=2)sw.append("<li class=\"dots\"><a>...</a></li>");
    }

    private void buildPageLine(int start, int finish){
        for(; start <= finish; start++){
            if(start!=pageNumber)buildCell(start);
            else buildActiveCell(start);
        }
    }

    private void buildCell(int index){
        sw.append("<li><a href=\"?page=");
        buildPartOfCell(index);
    }

    private void buildActiveCell(int index){
        sw.append("<li class=\"active\"><a href=\"?page=");
        buildPartOfCell(index);
    }

    private void buildPartOfCell(int index){
        sw.append(String.valueOf(index));
        sw.append("&size=");
        sw.append(String.valueOf(pageSize));
        addAllParameters();
        sw.append("\">");
        sw.append(String.valueOf(index));
        sw.append("</a></li>");
    }
}
