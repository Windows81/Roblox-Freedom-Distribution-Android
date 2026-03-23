.class public Lcom/roblox/client/friends/nearby/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/roblox/client/friends/a;

.field private final b:Lcom/roblox/client/friends/nearby/b/d;

.field private final c:Lcom/roblox/client/friends/nearby/b/a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/friends/nearby/b/d;Lcom/roblox/client/friends/nearby/b/a;Lcom/roblox/client/friends/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/e;->a:Lcom/roblox/client/friends/a;

    .line 46
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/e;->b:Lcom/roblox/client/friends/nearby/b/d;

    .line 47
    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/e;->c:Lcom/roblox/client/friends/nearby/b/a;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x9

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/e;I)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/e;->b(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/e;)Lcom/roblox/client/friends/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/e;->a:Lcom/roblox/client/friends/a;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/e;Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    const/4 v1, 0x0

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;

    iget-object p1, p1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->imageUrl:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x6

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/b/e;I)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/e;->a(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/roblox/client/friends/c/c;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/c/c;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e;->b:Lcom/roblox/client/friends/nearby/b/d;

    iget-object v2, p1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/roblox/client/friends/nearby/b/d;->a(Ljava/lang/String;)Le/b;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/nearby/b/e$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/roblox/client/friends/nearby/b/e$1;-><init>(Lcom/roblox/client/friends/nearby/b/e;Landroidx/lifecycle/p;Lcom/roblox/client/friends/c/c;)V

    .line 54
    invoke-interface {v1, v2}, Le/b;->a(Le/d;)V

    return-object v0
.end method

.method public a(Lcom/roblox/client/friends/nearby/b/a/a;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e;->c:Lcom/roblox/client/friends/nearby/b/a;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/roblox/client/friends/nearby/b/a;->a(J)Le/b;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/nearby/b/e$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/roblox/client/friends/nearby/b/e$2;-><init>(Lcom/roblox/client/friends/nearby/b/e;Landroidx/lifecycle/p;Lcom/roblox/client/friends/nearby/b/a/a;)V

    invoke-interface {v1, v2}, Le/b;->a(Le/d;)V

    return-object v0
.end method

.method public b(Lcom/roblox/client/friends/nearby/b/a/a;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e;->b:Lcom/roblox/client/friends/nearby/b/d;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v2

    iget-object v2, v2, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/roblox/client/friends/nearby/b/d;->b(Ljava/lang/String;)Le/b;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/nearby/b/e$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/roblox/client/friends/nearby/b/e$3;-><init>(Lcom/roblox/client/friends/nearby/b/e;Landroidx/lifecycle/p;Lcom/roblox/client/friends/nearby/b/a/a;)V

    invoke-interface {v1, v2}, Le/b;->a(Le/d;)V

    return-object v0
.end method
