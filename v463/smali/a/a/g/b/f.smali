.class public La/a/g/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final transient b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/g/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, La/a/g/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/g/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "La/a/g/d;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/g/b/f;->a:Ljava/util/Map;

    .line 22
    sget-object v0, La/a/g/b/f;->b:Ljava/lang/String;

    const-string v1, "Initialization source code data"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/g/d;

    if-eqz v0, :cond_2

    .line 29
    iget-object v1, v0, La/a/g/d;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, v0, La/a/g/d;->c:Ljava/lang/String;

    .line 34
    new-instance v2, La/a/g/b/e;

    invoke-direct {v2, v0}, La/a/g/b/e;-><init>(La/a/g/d;)V

    .line 35
    iget-object v0, p0, La/a/g/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    sget-object v0, La/a/g/b/f;->b:Ljava/lang/String;

    const-string v1, "Stack frame is null or sourceCode is empty"

    invoke-static {v0, v1}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void

    .line 24
    :cond_4
    :goto_2
    sget-object p1, La/a/g/b/f;->b:Ljava/lang/String;

    const-string v0, "Exception stack is null or empty"

    invoke-static {p1, v0}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
