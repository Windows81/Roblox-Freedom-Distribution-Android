.class Lcom/roblox/client/h/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/h/m;

.field private final b:J

.field private c:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/h/m;J)V
    .locals 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/roblox/client/h/m$a;->a:Lcom/roblox/client/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/h/m$a;->c:I

    .line 149
    iput-wide p2, p0, Lcom/roblox/client/h/m$a;->b:J

    .line 150
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v1, "Final"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    const-string v2, "onRequestFinished() headshot retrieval final"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v1, "Url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/roblox/client/h/m$a;->a:Lcom/roblox/client/h/m;

    iget-wide v2, p0, Lcom/roblox/client/h/m$a;->b:J

    invoke-static {v1, v2, v3, v0}, Lcom/roblox/client/h/m;->a(Lcom/roblox/client/h/m;JLjava/lang/String;)V

    .line 161
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/c;

    iget-object v2, p0, Lcom/roblox/client/h/m$a;->a:Lcom/roblox/client/h/m;

    invoke-static {v2}, Lcom/roblox/client/h/m;->a(Lcom/roblox/client/h/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/e/c;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetry() count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/h/m$a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/roblox/client/h/m$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
