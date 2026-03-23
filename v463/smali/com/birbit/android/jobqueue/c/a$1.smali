.class Lcom/birbit/android/jobqueue/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/birbit/android/jobqueue/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/c/a;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/c/a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/birbit/android/jobqueue/c/a$1;->a:Lcom/birbit/android/jobqueue/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)I
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(JJ)I
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/h;)I
    .locals 4

    .line 26
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/birbit/android/jobqueue/c/a$1;->a(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->g()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/birbit/android/jobqueue/c/a$1;->a(JJ)I

    move-result v0

    neg-int v0, v0

    if-eqz v0, :cond_2

    return v0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->e()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->e()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/birbit/android/jobqueue/c/a$1;->a(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/birbit/android/jobqueue/h;

    check-cast p2, Lcom/birbit/android/jobqueue/h;

    invoke-virtual {p0, p1, p2}, Lcom/birbit/android/jobqueue/c/a$1;->a(Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/h;)I

    move-result p1

    return p1
.end method
