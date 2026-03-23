.class public Lcom/roblox/client/r/c;
.super Lcom/roblox/client/r/f;
.source "SourceFile"


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/roblox/client/r/f;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/r/c;->d:Ljava/util/ArrayList;

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/roblox/client/e/a/b;->a()Lcom/roblox/client/e/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/e/a/b;->a(J)Lcom/roblox/client/e/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, p3}, Lcom/roblox/client/e/a/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/r/f$a;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/roblox/client/r/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/roblox/client/r/c;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/roblox/client/r/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const-string v3, ","

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/r/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/f;->i()Lcom/roblox/platform/http/c/k;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "150x150"

    const-string v4, "Png"

    .line 46
    invoke-interface {v1, v0, v3, v4, v2}, Lcom/roblox/platform/http/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v0}, Le/l;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v0}, Le/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;

    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;

    .line 55
    iget-wide v3, v2, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->targetId:J

    iget-object v5, v2, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/roblox/client/r/c;->a(JLjava/lang/String;)V

    .line 56
    iget-wide v2, v2, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->targetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/l/b;

    invoke-direct {v2, v1}, Lcom/roblox/client/l/b;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
