.class public La/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "json"

    .line 14
    iput-object v0, p0, La/a/b;->a:Ljava/lang/String;

    .line 28
    iput-object p1, p0, La/a/b;->b:Ljava/lang/String;

    .line 29
    iput-object p2, p0, La/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, La/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, La/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/net/Uri;
    .locals 1

    .line 59
    iget-object v0, p0, La/a/b;->d:Landroid/net/Uri;

    return-object v0
.end method

.method private e()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, La/a/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "json"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 64
    invoke-direct {p0}, La/a/b;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%spost?format=%s&token=%s"

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 73
    invoke-direct {p0}, La/a/b;->d()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-direct {p0}, La/a/b;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
