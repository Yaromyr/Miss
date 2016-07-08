package ua.com.miss.form;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import ua.com.miss.entity.Commodity;
import ua.com.miss.filtes.Colors;
import ua.com.miss.filtes.Sizes;

import javax.persistence.criteria.Join;
import java.util.List;

/**
 * Created by Yulian Bulbuk on 07.07.2016.
 */
public class DressesFilters {
    private String type;
    private String style;
    private String length;
    private List<Integer> colors;
    private List<Integer> sizes;

    private Specifications<Commodity> commoditySpecifications;

    private Specification<Commodity> findByType() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaBuilder.equal(root.get("type"), type);
        }
        );
    }

    private Specification<Commodity> findByStyle() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaBuilder.equal(root.get("style"), style);
        }
        );
    }

    private Specification<Commodity> findByLength() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaBuilder.equal(root.get("length"), length);
        }
        );
    }

    private void buildSpecification(Specification<Commodity> spec) {

        if (spec != null) {
            if (commoditySpecifications != null) {
                commoditySpecifications = commoditySpecifications.and(spec);
            } else {
                commoditySpecifications = Specifications.where(spec);
            }
        }
    }

    private Specification<Commodity> findByColors() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            Join<Commodity, Colors> join = root.join("colorsList");
            return join.get("id").in(colors);
        }
        );
    }

    private Specification<Commodity> findBySizes() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            Join<Commodity, Sizes> join = root.join("sizesList");
            return join.get("id").in(sizes);
        }
        );
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
        if (type != null)
            buildSpecification(findByType());
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
        if (style != null)
            buildSpecification(findByStyle());
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
        if (length != null)
            buildSpecification(findByLength());
    }

    public List<Integer> getColors() {
        return colors;
    }

    public void setColors(List<Integer> colors) {
        this.colors = colors;
        if (colors != null && !colors.isEmpty())
            buildSpecification(findByColors());

    }

    public List<Integer> getSizes() {
        return sizes;
    }

    public void setSizes(List<Integer> sizes) {
        this.sizes = sizes;
        if (sizes != null && !sizes.isEmpty())
            buildSpecification(findBySizes());

    }

    public Specifications<Commodity> getCommoditySpecifications() {
        return commoditySpecifications;
    }

}
