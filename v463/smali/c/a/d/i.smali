.class public final Lc/a/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/b/g;

.field private final c:Lc/a/d/h;

.field private final d:Lc/i;

.field private final e:I

.field private final f:Lc/aa;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lc/a/b/g;Lc/a/d/h;Lc/i;ILc/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/u;",
            ">;",
            "Lc/a/b/g;",
            "Lc/a/d/h;",
            "Lc/i;",
            "I",
            "Lc/aa;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc/a/d/i;->a:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lc/a/d/i;->d:Lc/i;

    .line 44
    iput-object p2, p0, Lc/a/d/i;->b:Lc/a/b/g;

    .line 45
    iput-object p3, p0, Lc/a/d/i;->c:Lc/a/d/h;

    .line 46
    iput p5, p0, Lc/a/d/i;->e:I

    .line 47
    iput-object p6, p0, Lc/a/d/i;->f:Lc/aa;

    return-void
.end method

.method private a(Lc/t;)Z
    .locals 2

    .line 109
    invoke-virtual {p1}, Lc/t;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/a/d/i;->d:Lc/i;

    invoke-interface {v1}, Lc/i;->a()Lc/ae;

    move-result-object v1

    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lc/t;->g()I

    move-result p1

    iget-object v0, p0, Lc/a/d/i;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->a()Lc/ae;

    move-result-object v0

    invoke-virtual {v0}, Lc/ae;->a()Lc/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a;->a()Lc/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/t;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Lc/aa;
    .locals 1

    .line 63
    iget-object v0, p0, Lc/a/d/i;->f:Lc/aa;

    return-object v0
.end method

.method public a(Lc/aa;)Lc/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lc/a/d/i;->b:Lc/a/b/g;

    iget-object v1, p0, Lc/a/d/i;->c:Lc/a/d/h;

    iget-object v2, p0, Lc/a/d/i;->d:Lc/i;

    invoke-virtual {p0, p1, v0, v1, v2}, Lc/a/d/i;->a(Lc/aa;Lc/a/b/g;Lc/a/d/h;Lc/i;)Lc/ac;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/aa;Lc/a/b/g;Lc/a/d/h;Lc/i;)Lc/ac;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget v0, p0, Lc/a/d/i;->e:I

    iget-object v1, p0, Lc/a/d/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 74
    iget v0, p0, Lc/a/d/i;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/d/i;->g:I

    .line 77
    iget-object v0, p0, Lc/a/d/i;->c:Lc/a/d/h;

    const-string v2, "network interceptor "

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/aa;->a()Lc/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/d/i;->a(Lc/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/a/d/i;->a:Ljava/util/List;

    iget p4, p0, Lc/a/d/i;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must retain the same host and port"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/d/i;->c:Lc/a/d/h;

    const-string v3, " must call proceed() exactly once"

    if-eqz v0, :cond_3

    iget v0, p0, Lc/a/d/i;->g:I

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/a/d/i;->a:Ljava/util/List;

    iget p4, p0, Lc/a/d/i;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_3
    :goto_1
    new-instance v0, Lc/a/d/i;

    iget-object v5, p0, Lc/a/d/i;->a:Ljava/util/List;

    iget v4, p0, Lc/a/d/i;->e:I

    add-int/lit8 v9, v4, 0x1

    move-object v4, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lc/a/d/i;-><init>(Ljava/util/List;Lc/a/b/g;Lc/a/d/h;Lc/i;ILc/aa;)V

    .line 91
    iget-object p1, p0, Lc/a/d/i;->a:Ljava/util/List;

    iget p2, p0, Lc/a/d/i;->e:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/u;

    .line 92
    invoke-interface {p1, v0}, Lc/u;->a(Lc/u$a;)Lc/ac;

    move-result-object p2

    if-eqz p3, :cond_5

    .line 95
    iget p3, p0, Lc/a/d/i;->e:I

    add-int/2addr p3, v1

    iget-object p4, p0, Lc/a/d/i;->a:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_5

    iget p3, v0, Lc/a/d/i;->g:I

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    .line 102
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "interceptor "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 72
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b()Lc/i;
    .locals 1

    .line 51
    iget-object v0, p0, Lc/a/d/i;->d:Lc/i;

    return-object v0
.end method

.method public c()Lc/a/b/g;
    .locals 1

    .line 55
    iget-object v0, p0, Lc/a/d/i;->b:Lc/a/b/g;

    return-object v0
.end method

.method public d()Lc/a/d/h;
    .locals 1

    .line 59
    iget-object v0, p0, Lc/a/d/i;->c:Lc/a/d/h;

    return-object v0
.end method
