import 'package:tuple/tuple.dart';

const List<DesignInfo> config = [
  DesignInfo(
    'Nullable row as a simple synchronization primitive',
    '''A nice synchronization primitive arises from noting that <i>creating a row</i> and <i>invoking a function</i> have the same form: both take a set of key-value pairs.
    
Consider a table where all fields outside the primary key are nullable.

Multiple asynchronous processes can then contribute multiple values to the row, say through a REST API. Attached to the table can be one or more triggers that specify a subset of the fields in the table, where once all those fields are ground, the trigger runs once, receiving those field values as its arguments.

IOW, APIs should support currying and letting the user create new endpoints.''',
  ),
  DesignInfo(
      'APIs should support FP',
      '''APIs should support simple LISPy functional programming constructs. Let your users fetch just the data they want in the form they want by applying <i>map</i>, <i>fold</i> and such <i>in the back end</i> makes your API simpler and more expressive while reducing the load on the back end.

Yes, there are security implications, and yes, we might want to avoid making this Turing complete, but these problems are both surmountable.''',
  ),
  DesignInfo(
    'First, there is the data',
    '''Code, apps, everything comes and goes and changes, except the data.
    
There is nothing you can do in software design that is more enduring, flexible and simple than a good, normalized relational data design. Everything after that is a denormalization. Including the user interface.<br>Software architecture always circles this idea. The latest example is the popularity of <link href="https://en.wikipedia.org/wiki/Functional_reactive_programming">Functional Reactive Programming</link>.'''
  ),
  DesignInfo(
    'WASI on WASM is going to change everything',
    '''<link href="https://en.wikipedia.org/wiki/WebAssembly">WASM</link> will be the universal VM the JVM was supposed to be.
    
WASM is adding GC, <link href="https://hacks.mozilla.org/2019/08/webassembly-interface-types/">language interoperability</link>, <link href="https://webassembly.org/docs/security/">real sandboxes</link>, and whole new kind of system interface called <link href="https://www.infoq.com/presentations/wasi-system-interface/">WASI</link>.
    
My Ruby code will be able to call your Rust code in nanoseconds. I don‘t need to trust your Rust code to use it. Supply-chain attacks will be almost non-existent. 
    
The economics of code reuse is completely changed when I can write one really good implementation of a fourier transform and then everyone, in every programming language, will be able to use it.
    
Much of the reason for Virtual Machines is gone.
    
When I can safely run your code on my back end, API design will be radically changed.
    
WASM is going to change <i>everything</i>.'''
  )
];

class DesignInfo extends Tuple2<String, String > {
  const DesignInfo(String a, String b):
        super(a, b);
}