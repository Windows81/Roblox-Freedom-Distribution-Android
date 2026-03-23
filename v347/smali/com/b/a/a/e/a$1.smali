.class Lcom/b/a/a/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/b/a/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/e/a;


# direct methods
.method constructor <init>(Lcom/b/a/a/e/a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/b/a/a/e/a$1;->a:Lcom/b/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)I
    .locals 1

    .prologue
    .line 43
    if-le p1, p2, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    if-le p2, p1, :cond_1

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JJ)I
    .locals 1

    .prologue
    .line 53
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/b/a/a/j;Lcom/b/a/a/j;)I
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/j;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/b/a/a/j;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/e/a$1;->a(II)I

    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/b/a/a/j;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/b/a/a/j;->g()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/b/a/a/e/a$1;->a(JJ)I

    move-result v0

    neg-int v0, v0

    .line 35
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/b/a/a/e/a$1;->a(JJ)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/b/a/a/j;

    check-cast p2, Lcom/b/a/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/e/a$1;->a(Lcom/b/a/a/j;Lcom/b/a/a/j;)I

    move-result v0

    return v0
.end method
