.class public Lcom/roblox/client/r/d;
.super Lcom/roblox/client/r/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/r/d$b;,
        Lcom/roblox/client/r/d$a;
    }
.end annotation


# instance fields
.field private d:J

.field private e:Lcom/roblox/client/r/d$a;


# direct methods
.method public constructor <init>(JLcom/roblox/client/r/d$a;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/r/f;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/roblox/client/r/d;->d:J

    .line 65
    iput-object p3, p0, Lcom/roblox/client/r/d;->e:Lcom/roblox/client/r/d$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/r/d;)Lcom/roblox/client/r/d$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/r/d;->e:Lcom/roblox/client/r/d$a;

    return-object p0
.end method

.method private a(ZLcom/roblox/client/r/d$b;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/roblox/client/r/d;->e:Lcom/roblox/client/r/d$a;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/roblox/client/r/d;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/r/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/r/d$1;-><init>(Lcom/roblox/client/r/d;ZLcom/roblox/client/r/d$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->i()Lcom/roblox/platform/http/c/k;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/r/d;->d:J

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, "420x420"

    const-string v5, "Png"

    .line 121
    invoke-interface/range {v1 .. v6}, Lcom/roblox/platform/http/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Le/b;->a()Le/l;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Le/l;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1}, Le/l;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;

    if-eqz v1, :cond_0

    .line 129
    iget-object v2, v1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v1, v1, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;

    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/roblox/client/r/f$a;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/r/d;->a(ZLcom/roblox/client/r/d$b;)V

    return-void
.end method

.method public g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    iget-wide v0, p0, Lcom/roblox/client/r/d;->d:J

    invoke-static {v0, v1}, Lcom/roblox/client/u;->a(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-static {v0, v1, v1}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.catalog"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Name"

    .line 108
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Description"

    .line 109
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-direct {p0}, Lcom/roblox/client/r/d;->o()Ljava/lang/String;

    move-result-object v7

    .line 114
    new-instance v0, Lcom/roblox/client/r/d$b;

    iget-wide v3, p0, Lcom/roblox/client/r/d;->d:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/roblox/client/r/d$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, v1, v0}, Lcom/roblox/client/r/d;->a(ZLcom/roblox/client/r/d$b;)V

    return-void
.end method
