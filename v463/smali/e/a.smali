.class final Le/a;
.super Le/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a$e;,
        Le/a$a;,
        Le/a$c;,
        Le/a$b;,
        Le/a$f;,
        Le/a$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Le/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/e<",
            "Lc/ad;",
            "*>;"
        }
    .end annotation

    .line 29
    const-class p3, Lc/ad;

    if-ne p1, p3, :cond_1

    .line 30
    const-class p1, Le/b/v;

    invoke-static {p2, p1}, Le/o;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    sget-object p1, Le/a$c;->a:Le/a$c;

    return-object p1

    .line 33
    :cond_0
    sget-object p1, Le/a$a;->a:Le/a$a;

    return-object p1

    .line 35
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 36
    sget-object p1, Le/a$f;->a:Le/a$f;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Le/m;)Le/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/e<",
            "*",
            "Lc/ab;",
            ">;"
        }
    .end annotation

    .line 44
    const-class p2, Lc/ab;

    invoke-static {p1}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Le/a$b;->a:Le/a$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Le/m;",
            ")",
            "Le/e<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_0

    .line 53
    sget-object p1, Le/a$d;->a:Le/a$d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
