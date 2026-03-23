.class public Lcom/roblox/client/h/n;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/n$b;,
        Lcom/roblox/client/h/n$a;
    }
.end annotation


# instance fields
.field private d:J

.field private e:Lcom/roblox/client/h/n$a;


# direct methods
.method public constructor <init>(JLcom/roblox/client/h/n$a;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/roblox/client/h/n;->d:J

    .line 51
    iput-object p3, p0, Lcom/roblox/client/h/n;->e:Lcom/roblox/client/h/n$a;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/n;)Lcom/roblox/client/h/n$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/roblox/client/h/n;->e:Lcom/roblox/client/h/n$a;

    return-object v0
.end method

.method private a(ZLcom/roblox/client/h/n$b;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/roblox/client/h/n;->e:Lcom/roblox/client/h/n$a;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/roblox/client/h/n;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/n$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/h/n$1;-><init>(Lcom/roblox/client/h/n;ZLcom/roblox/client/h/n$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-wide v0, p0, Lcom/roblox/client/h/n;->d:J

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->assetThumbnailUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0, v2, v2}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "rbx.catalog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbnailPayload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "Url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/h/n;->a(ZLcom/roblox/client/h/n$b;)V

    .line 57
    return-void
.end method

.method public g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-wide v0, p0, Lcom/roblox/client/h/n;->d:J

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->marketProductInfoUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0, v2, v2}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "rbx.catalog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v0, "Name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    const-string v0, "Description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-direct {p0}, Lcom/roblox/client/h/n;->o()Ljava/lang/String;

    move-result-object v6

    .line 100
    new-instance v1, Lcom/roblox/client/h/n$b;

    iget-wide v2, p0, Lcom/roblox/client/h/n;->d:J

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/n$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/h/n;->a(ZLcom/roblox/client/h/n$b;)V

    .line 102
    return-void
.end method
