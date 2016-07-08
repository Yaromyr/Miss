package ua.com.miss.form;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import ua.com.miss.entity.Commodity;

/**
 * Created by Yulian Bulbuk on 07.07.2016.
 */
public class AccessoriesFilters {
    private String type;

    private Specifications<Commodity> commoditySpecifications;

    private Specification<Commodity> findByType() {
        return ((root, criteriaQuery, criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaBuilder.equal(root.get("type"), type);
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
        if (type != null)
            buildSpecification(findByType());
    }

    public Specifications<Commodity> getCommoditySpecifications() {
        return commoditySpecifications;
    }
}
