.class Lcom/roblox/client/hybrid/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/b;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/b;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b$b;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/b$b;-><init>(Lcom/roblox/client/hybrid/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 9

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v5, "params"

    .line 36
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "userIds"

    .line 38
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x0

    .line 39
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 40
    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    if-lez v1, :cond_2

    .line 49
    new-instance v1, Lcom/roblox/client/l/i;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/roblox/client/l/i;-><init>(JJ)V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0, v5}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4, v5}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    :goto_1
    return-void
.end method
