.class public Lcom/roblox/client/h/o;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/o$a;
    }
.end annotation


# instance fields
.field private d:J

.field private e:I

.field private f:I

.field private g:Lcom/roblox/client/h/o$a;


# direct methods
.method public constructor <init>(JIILcom/roblox/client/h/o$a;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/roblox/client/h/o;->d:J

    .line 33
    iput p3, p0, Lcom/roblox/client/h/o;->e:I

    .line 34
    iput p4, p0, Lcom/roblox/client/h/o;->f:I

    .line 35
    iput-object p5, p0, Lcom/roblox/client/h/o;->g:Lcom/roblox/client/h/o$a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/o;)Lcom/roblox/client/h/o$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/h/o;->g:Lcom/roblox/client/h/o$a;

    return-object v0
.end method

.method private a(ZLcom/roblox/client/e/l;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/roblox/client/h/o;->g:Lcom/roblox/client/h/o$a;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/roblox/client/h/o;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/o$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/h/o$1;-><init>(Lcom/roblox/client/h/o;ZLcom/roblox/client/e/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/h/o;->a(ZLcom/roblox/client/e/l;)V

    .line 109
    return-void
.end method

.method public g()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecureWWW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friends/list?userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/h/o;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/h/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/h/o;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0, v4, v4}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string v0, "Friends"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    if-lez v4, :cond_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 70
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 71
    new-instance v7, Lcom/roblox/client/chat/a/m;

    const-string v8, "Id"

    const-wide/16 v10, -0x1

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "Username"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UserProfileLink"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/roblox/client/chat/a/n;->a(Lcom/roblox/client/chat/a/m;)V

    .line 77
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/roblox/client/chat/a/n;->b(Lcom/roblox/client/chat/a/m;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/roblox/client/e/l;

    invoke-direct {v0, v5}, Lcom/roblox/client/e/l;-><init>(Ljava/util/ArrayList;)V

    .line 82
    const-string v3, "TotalFriends"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/roblox/client/e/l;->b(I)V

    .line 83
    const-string v3, "StartIndex"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/roblox/client/e/l;->a(I)V

    .line 84
    const-string v3, "PageSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/roblox/client/e/l;->c(I)V

    .line 85
    const-string v3, "TotalPages"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/e/l;->d(I)V

    .line 88
    new-instance v1, Lcom/roblox/client/h/m;

    invoke-direct {v1, v2}, Lcom/roblox/client/h/m;-><init>(Ljava/util/ArrayList;)V

    .line 89
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 91
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/h/o;->a(ZLcom/roblox/client/e/l;)V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
