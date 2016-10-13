# Data-archive
- 用归档和解档时归档的对象必须遵守NSCoding协议
- 实现encodeWithCoder:归档方法和initWithCoder解析方法
```
//自定义对象归档调用该方法，用来描述当前对象里面的那些属性需要归档
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInt:self.age forKey:@"age"];
}
//解档时调用该方法,用来描述当前对象里面的哪些属性需要解档
//解析文件都会调用这个方法,xib,sb
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeIntForKey:@"age"];
    }
    return self;
}
```