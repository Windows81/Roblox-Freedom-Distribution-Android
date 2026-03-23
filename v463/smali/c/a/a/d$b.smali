.class final Lc/a/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[Ljava/io/File;

.field private final d:[Ljava/io/File;

.field private e:Z

.field private f:Lc/a/a/d$a;

.field private g:J


# direct methods
.method static synthetic a(Lc/a/a/d$b;J)J
    .locals 0

    .line 968
    iput-wide p1, p0, Lc/a/a/d$b;->g:J

    return-wide p1
.end method

.method static synthetic a(Lc/a/a/d$b;)Lc/a/a/d$a;
    .locals 0

    .line 968
    iget-object p0, p0, Lc/a/a/d$b;->f:Lc/a/a/d$a;

    return-object p0
.end method

.method static synthetic a(Lc/a/a/d$b;Lc/a/a/d$a;)Lc/a/a/d$a;
    .locals 0

    .line 968
    iput-object p1, p0, Lc/a/a/d$b;->f:Lc/a/a/d$a;

    return-object p1
.end method

.method static synthetic a(Lc/a/a/d$b;Z)Z
    .locals 0

    .line 968
    iput-boolean p1, p0, Lc/a/a/d$b;->e:Z

    return p1
.end method

.method static synthetic b(Lc/a/a/d$b;)[J
    .locals 0

    .line 968
    iget-object p0, p0, Lc/a/a/d$b;->b:[J

    return-object p0
.end method

.method static synthetic c(Lc/a/a/d$b;)[Ljava/io/File;
    .locals 0

    .line 968
    iget-object p0, p0, Lc/a/a/d$b;->c:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lc/a/a/d$b;)[Ljava/io/File;
    .locals 0

    .line 968
    iget-object p0, p0, Lc/a/a/d$b;->d:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic e(Lc/a/a/d$b;)Ljava/lang/String;
    .locals 0

    .line 968
    iget-object p0, p0, Lc/a/a/d$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lc/a/a/d$b;)Z
    .locals 0

    .line 968
    iget-boolean p0, p0, Lc/a/a/d$b;->e:Z

    return p0
.end method


# virtual methods
.method a(Ld/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lc/a/a/d$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 1022
    invoke-interface {p1, v5}, Ld/d;->i(I)Ld/d;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ld/d;->l(J)Ld/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
