module ApplicationHelper
def paginate_bootstrap(objeto)
	will_paginate(objeto,  renderer: BootstrapPagination::Rails)
end
end
