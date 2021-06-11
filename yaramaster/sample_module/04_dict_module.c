#include <yara/modules.h>

#define MODULE_NAME my_dict

begin_declarations;
    declare_integer_dictionary("my_dict");
end_declarations;

int module_initialize(
    YR_MODULE *module)
{
    return ERROR_SUCCESS;
}

int module_finalize(
    YR_MODULE *module)
{
    return ERROR_SUCCESS;
}

int module_load(
    YR_SCAN_CONTEXT *context,
    YR_OBJECT *module_object,
    void *module_data,
    size_t module_data_size)
{
    set_integer(3, module_object, "my_dict[%s]", "a");
    set_integer(4, module_object, "my_dict[%s]", "b");
    set_integer(5, module_object, "my_dict[%s]", "c");

    return ERROR_SUCCESS;
}

int module_unload(
    YR_OBJECT *module_object)
{
    return ERROR_SUCCESS;
}

#undef MODULE_NAME