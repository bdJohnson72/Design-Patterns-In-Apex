/**
 * Created by brooks.johnson on 7/8/2022.
 */

public interface IFeatureToggle {

    Boolean isActive(String toggleName);
}