.class public final Lcom/google/c/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/l",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/google/c/b/ae$1;

    invoke-direct {v0}, Lcom/google/c/b/ae$1;-><init>()V

    sput-object v0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/l;

    .line 129
    new-instance v0, Lcom/google/c/b/ae$4;

    invoke-direct {v0}, Lcom/google/c/b/ae$4;-><init>()V

    sput-object v0, Lcom/google/c/b/ae;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/c/b/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Lcom/google/c/b/ae$3;

    invoke-direct {v0, p0}, Lcom/google/c/b/ae$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/c/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/c/b/k",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 987
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/google/c/b/ae;->a([Ljava/lang/Object;III)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method static a()Lcom/google/c/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/l;

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/google/c/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/google/c/b/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 999
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/e;->a(Z)V

    .line 1000
    add-int v0, p1, p2

    .line 1003
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/c/a/e;->a(III)V

    .line 1004
    invoke-static {p3, p2}, Lcom/google/c/a/e;->b(II)I

    .line 1005
    if-nez p2, :cond_1

    .line 1006
    invoke-static {}, Lcom/google/c/b/ae;->a()Lcom/google/c/b/l;

    move-result-object v0

    .line 1014
    :goto_1
    return-object v0

    .line 999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1014
    :cond_1
    new-instance v0, Lcom/google/c/b/ae$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/c/b/ae$2;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/c/a/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/c/a/f",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {p0, p1}, Lcom/google/c/b/ae;->b(Ljava/util/Iterator;Lcom/google/c/a/f;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/c/a/g;->a(Ljava/lang/Object;)Lcom/google/c/a/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/c/b/ae;->a(Ljava/util/Iterator;Lcom/google/c/a/f;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 276
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    :cond_1
    :goto_0
    return v0

    .line 280
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 282
    invoke-static {v1, v2}, Lcom/google/c/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 286
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/c/a/f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/google/c/a/f",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 729
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/google/c/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 732
    invoke-interface {p1, v1}, Lcom/google/c/a/f;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    :goto_1
    return v0

    .line 730
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
