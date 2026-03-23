.class Lcom/roblox/client/hybrid/a/b$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/b;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/b;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b$e;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/b$e;-><init>(Lcom/roblox/client/hybrid/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    const-string v3, "params"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    const-string v3, "userIds"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 138
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 139
    invoke-virtual {v3, v0, v8, v9}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v4

    .line 140
    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    new-instance v3, Lcom/roblox/client/e/p;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v3, v8, v9, v0, v1}, Lcom/roblox/client/e/p;-><init>(JJ)V

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v7}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 156
    :goto_1
    return-void

    .line 154
    :cond_2
    invoke-virtual {p1, v1, v7}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_1
.end method
