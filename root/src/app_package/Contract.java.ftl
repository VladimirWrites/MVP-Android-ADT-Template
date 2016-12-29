package ${packageName};

import ${packageName}.presentation.base.IPresenterBase;
import ${packageName}.presentation.base.IViewBase;
 
public interface ${contractClass} {

	interface Presenter {
 
	}

	interface View<T extends Presenter> {
		void setPresenter(T presenter);
	}
}