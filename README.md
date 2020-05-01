# objc-runtime
objc runtime 799.1

### 运行时入口
objc-os.mm
* 运行时初始化
    
```objc
// 程序启动入口
void _objc_init(void)
{
    static bool initialized = false;
    if (initialized) return;
    initialized = true;
    
    // fixme defer initialization until an objc-using image is found?
    environ_init();
    tls_init();
    static_init();
    runtime_init();
    exception_init();
    cache_init();
    _imp_implementationWithBlock_init();

//    启动APP时，runtime所做的事情有
//    调用map_images进行可执行文件内容的解析和处理
//    在load_images中调用call_load_methods，调用所有Class和Category的+load方法
//    进行各种objc结构的初始化（注册Objc类 、初始化类对象等等）
//    调用C++静态初始化器和__attribute__((constructor))修饰的函数
//
//    到此为止，可执行文件和动态库中所有的符号(Class，Protocol，Selector，IMP，…)都已经按格式成功加载到内存中，被runtime 所管理
    
    _dyld_objc_notify_register(&map_images, load_images, unmap_image);
}
```

### category_t加载处理过程
* obj-os.mm
    * _objc_init
    * map_images
    * map_images_nolock 

* objc-runtime-new.mm
    * _read_images
    * realizeClassWithoutSwift
    * methodizeClass
    * attachCategories
    * attachLists
    * realloc、memmove、memcpy

### +load方法
* _objc_init
* load_image
* prepare_load_methods
    * schedule_class_load
    * add_class_to_loadable_list
    * add_category_to_loadable_list
* call_load_methods  
    * call_class_laods
    * call_calss_loads
    * call_category_loads
    * **(*load_method)(cls,SEL_load)**
    
* +load方法是根据方法地址直接调用，并不是经过objc_msgSend函数调用 




