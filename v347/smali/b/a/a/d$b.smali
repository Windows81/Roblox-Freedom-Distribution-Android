.class final Lb/a/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
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

.field private f:Lb/a/a/d$a;

.field private g:J


# direct methods
.method static synthetic a(Lb/a/a/d$b;J)J
    .locals 1

    .prologue
    .line 968
    iput-wide p1, p0, Lb/a/a/d$b;->g:J

    return-wide p1
.end method

.method static synthetic a(Lb/a/a/d$b;)Lb/a/a/d$a;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    return-object v0
.end method

.method static synthetic a(Lb/a/a/d$b;Lb/a/a/d$a;)Lb/a/a/d$a;
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lb/a/a/d$b;->f:Lb/a/a/d$a;

    return-object p1
.end method

.method static synthetic a(Lb/a/a/d$b;Z)Z
    .locals 0

    .prologue
    .line 968
    iput-boolean p1, p0, Lb/a/a/d$b;->e:Z

    return p1
.end method

.method static synthetic b(Lb/a/a/d$b;)[J
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lb/a/a/d$b;->b:[J

    return-object v0
.end method

.method static synthetic c(Lb/a/a/d$b;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lb/a/a/d$b;->c:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lb/a/a/d$b;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lb/a/a/d$b;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lb/a/a/d$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lb/a/a/d$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lb/a/a/d$b;)Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lb/a/a/d$b;->e:Z

    return v0
.end method


# virtual methods
.method a(Lc/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v1, p0, Lb/a/a/d$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1022
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lc/d;->i(I)Lc/d;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lc/d;->l(J)Lc/d;

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    return-void
.end method
