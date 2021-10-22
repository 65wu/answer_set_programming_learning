# 规则(Rule)

规则是回答集编程最核心的要素，逻辑编程语言正是通过有限的规则来进行推导的，它的定义如下：

对于一个确定在原子(atoms)集合\_**A**\_上的普通的逻辑程序**P**来说，它由两部分组成，一个是`head`另外一个是`body`，它们之间用`->`连接 ，`head <- body`，表示当body为真时，可以推导出head的结论

$$a_0←a_1...,a_m,¬a_{m+1},...,¬a_n$$

{% hint style="info" %}
其中$$0≤m≤n$$并且$$∀a_i∈A$$ ，$$a_i$$是一个原子，它的概念与term是等价的，$$0≤i≤n$$

并且集合\_**A**\_是个有限集合
{% endhint %}

这些规则的部分还可以做进一步的划分，对于规则`r`来说：

* $$H(r) = \{a_0\}$$，表示规则的head
* $$B(r)^+ = \{a_1, ...,a_m\}$$，表示肯定的规则body
* $$B(r)^- = \{a_{m+1}, ..., a_n\}$$，表示否定的规则body
* $$A(P) = \cup_{r\in P}\{H(r)\cup B(r)^+ \cup B(r)^-\}$$，表示对于一个逻辑程序P的原子集合\_**A**\_

规则的例子如下：

* $$a \leftarrow b, \neg c$$
* $$a \leftarrow$$
* $$a \leftarrow b$$
* $$a \leftarrow \neg c$$
* $$bachelor(mike) \leftarrow male(mike), \neg married(mike)$$

{% hint style="info" %}
在第二个例子$$a \leftarrow$$中，body为空，这样的语法也是合法的，这代表head可以被无条件地推导
{% endhint %}

对于更为具体的程序，以clingo为例，它的语法为

$$
a_0\ :- \ a_1,..., a_m,\ not \ a_{m+1}, ..., a_{n+1}.
$$

`:-` 用来连接规则里的head和body，正如上方的`->`

`.` 必须在每个规则的结尾出现，用来表示规则的结束
