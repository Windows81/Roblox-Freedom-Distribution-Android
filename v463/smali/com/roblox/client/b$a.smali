.class Lcom/roblox/client/b$a;
.super Lcom/roblox/client/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private h:Landroid/content/Context;

.field private i:Lcom/roblox/client/b$b;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/b$b;)V
    .locals 0

    .line 173
    invoke-direct {p0, p2}, Lcom/roblox/client/http/c;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 170
    iput-boolean p2, p0, Lcom/roblox/client/b$a;->j:Z

    .line 174
    iput-object p1, p0, Lcom/roblox/client/b$a;->h:Landroid/content/Context;

    .line 175
    iput-object p3, p0, Lcom/roblox/client/b$a;->i:Lcom/roblox/client/b$b;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 10

    const-string v0, "applicationSettings"

    .line 182
    invoke-super {p0, p1}, Lcom/roblox/client/http/c;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "ErrorMsg"

    const-string v3, "ErrorCode"

    const-string v4, "Android-FlagsLoading-Error"

    const-string v5, "AndroidAppSettings"

    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v6

    .line 188
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Got the JSON settings from new endpoint."

    .line 194
    invoke-static {v5, v8}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 196
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v6}, Lcom/roblox/client/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/roblox/client/b;->b(J)J

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    invoke-static {v0}, Lcom/roblox/client/b;->c(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v8, 0x0

    .line 203
    invoke-static {v8, v9}, Lcom/roblox/client/b;->b(J)J

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/b$a;->h:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/roblox/client/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 210
    invoke-static {v7, v0}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;Z)V

    .line 211
    iget-object v0, p0, Lcom/roblox/client/b$a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 213
    iput-boolean v1, p0, Lcom/roblox/client/b$a;->j:Z

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/roblox/client/b;->cC()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/roblox/client/b;->a(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse settings! Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/roblox/client/b;->cD()V

    .line 222
    iget-object v5, p0, Lcom/roblox/client/b$a;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 224
    new-instance v5, Lcom/roblox/client/o/a;

    invoke-direct {v5, v4}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string v4, "Failed to parse flags json"

    .line 225
    invoke-virtual {v5, v3, v4}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " JSON: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    goto :goto_2

    :cond_1
    const-string v0, "Failed to retrieve settings!"

    .line 232
    invoke-static {v5, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/roblox/client/b;->cD()V

    .line 236
    iget-object v0, p0, Lcom/roblox/client/b$a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 238
    new-instance v0, Lcom/roblox/client/o/a;

    invoke-direct {v0, v4}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string v4, "Null response"

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {v0, v3, v5}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 240
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0, v2, v4}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    .line 245
    :goto_2
    invoke-static {v1}, Lcom/roblox/client/b;->a(Z)Z

    .line 247
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v0

    instance-of v0, v0, Lcom/roblox/client/http/s;

    if-eqz v0, :cond_4

    .line 248
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/http/s;

    invoke-virtual {v0}, Lcom/roblox/client/http/s;->a()V

    :cond_4
    return-object p1
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Lcom/roblox/client/http/c;->a(Lcom/roblox/client/http/j;)V

    .line 257
    iget-object v0, p0, Lcom/roblox/client/b$a;->i:Lcom/roblox/client/b$b;

    if-eqz v0, :cond_0

    .line 258
    iget-boolean v1, p0, Lcom/roblox/client/b$a;->j:Z

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/b$b;->a(ZLcom/roblox/client/http/j;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/b$a;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/b$a;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method
