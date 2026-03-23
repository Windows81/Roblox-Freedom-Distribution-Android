.class Lcom/roblox/client/b$b;
.super Lcom/roblox/client/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private h:Landroid/content/Context;

.field private i:Lcom/roblox/client/b$c;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/b$c;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p2}, Lcom/roblox/client/http/c;-><init>(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/b$b;->j:Z

    .line 138
    iput-object p1, p0, Lcom/roblox/client/b$b;->h:Landroid/content/Context;

    .line 139
    iput-object p3, p0, Lcom/roblox/client/b$b;->i:Lcom/roblox/client/b$c;

    .line 140
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/roblox/client/http/c;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/roblox/client/b$b;->h:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/roblox/client/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/roblox/client/b;->a(Lorg/json/JSONObject;Z)V

    .line 159
    iget-object v0, p0, Lcom/roblox/client/b$b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/b$b;->j:Z

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/b;->cd()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/roblox/client/b;->a(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-static {v6}, Lcom/roblox/client/b;->a(Z)Z

    .line 195
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    const-string v2, "SettingsRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse settings! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/roblox/client/b;->ce()V

    .line 170
    iget-object v2, p0, Lcom/roblox/client/b$b;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 172
    new-instance v2, Lcom/roblox/client/g/a;

    const-string v3, "Android-FlagsLoading-Error"

    invoke-direct {v2, v3}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v3, "ErrorCode"

    const-string v4, "Failed to parse flags json"

    .line 173
    invoke-virtual {v2, v3, v4}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v2

    const-string v3, "ErrorMsg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " JSON: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "SettingsRequest"

    const-string v2, "Failed to retrieve settings!"

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/roblox/client/b;->ce()V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/b$b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/b;->c(Landroid/content/Context;)V

    .line 186
    new-instance v2, Lcom/roblox/client/g/a;

    const-string v0, "Android-FlagsLoading-Error"

    invoke-direct {v2, v0}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v3, "ErrorCode"

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v2

    const-string v3, "ErrorMsg"

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    goto/16 :goto_0

    .line 187
    :cond_1
    const-string v0, "Null response"

    goto :goto_1

    .line 188
    :cond_2
    const-string v0, "Null response"

    goto :goto_2
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/roblox/client/http/c;->a(Lcom/roblox/client/http/j;)V

    .line 201
    iget-object v0, p0, Lcom/roblox/client/b$b;->i:Lcom/roblox/client/b$c;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/roblox/client/b$b;->i:Lcom/roblox/client/b$c;

    iget-boolean v1, p0, Lcom/roblox/client/b$b;->j:Z

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/b$c;->a(ZLcom/roblox/client/http/j;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/b$b;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/b$b;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method
