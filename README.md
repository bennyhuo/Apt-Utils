# Apt-Utils

This is a util library to help you setup apt project easily. Simply call `AptContext.init(env)` in your `Processor`, and you can access to the `Filer`/`Messager`/`Types`/`Elements` from `AptContext`.

## Print log with `Logger`

I have wrapped the `Messager` into `Logger`, so you can log what ever you want like: 

```kotlin
Logger.warn("Hello, %s", name)
Logger.note("This should be visible when compiled with '--debug' in gradle") 
```

## Handle Types

### `ClassType`

When you want to generate both java and kotlin source files, types would be a great mess. So I have introduced `ClassType` as a middle layer, you can use `classType.java` for java files and `classType.kotlin` for kotlin files.

### Type Conversion

Conversion extensions are provided to make it easy to convert from `Element` to `TypeMirror` or from `Class` to `TypeMirror` or any other pair of conversions. 

### Parameterized Type

I have overload the operator `get`, so that a parameterized type may be like:

```kotlin
val ARRAY_LIST = ClassType("java.util.ArrayList") // ArrayList
val STRING = ClassType("java.lang.String") // String
val ARRAY_LIST_STRING = ARRAY_LIST[STIRNG] //  ArrayList<String>
```

### Kotlin Types Mapping

Kotlin maps its primitive types such as Int, Long and kotlin.String to corresponding Java types such as int(Integer), long(Long) and java.lang.String. AptUtils smart convert this mapping types when you want to generate kotlin files with the `ClassType::kotlin` function.

# [License](LICENSE)

> MIT License
>
> Copyright (c) 2018 Bennyhuo
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.


