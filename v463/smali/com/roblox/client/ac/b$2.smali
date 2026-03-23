.class Lcom/roblox/client/ac/b$2;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ac/b;->a(Ljava/lang/String;Lcom/roblox/client/ac/b$a;)Lcom/roblox/client/http/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ac/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/ac/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/ac/b;Lcom/roblox/client/ac/b$a;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/roblox/client/ac/b$2;->c:Lcom/roblox/client/ac/b;

    iput-object p2, p0, Lcom/roblox/client/ac/b$2;->a:Lcom/roblox/client/ac/b$a;

    iput-object p3, p0, Lcom/roblox/client/ac/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 10

    .line 201
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "rbx.2sv"

    const/4 v3, 0x0

    const-string v4, "FailureUnknownError"

    const/16 v5, -0x3e8

    const/4 v6, 0x0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_0

    const-string v0, "callAuthVerify2SVCode. 2SV code verified."

    .line 205
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/roblox/client/ac/b$2;->c:Lcom/roblox/client/ac/b;

    iget-object v0, v0, Lcom/roblox/client/ac/b;->a:Lcom/roblox/client/s/f;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(I)V

    .line 209
    iget-object v0, p0, Lcom/roblox/client/ac/b$2;->a:Lcom/roblox/client/ac/b$a;

    const-wide/16 v7, -0x1

    invoke-interface {v0, v7, v8}, Lcom/roblox/client/ac/b$a;->a(J)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_3

    .line 213
    :cond_0
    :try_start_0
    new-instance v7, Lcom/roblox/client/ac/b$b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/roblox/client/ac/b$b;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v7

    move-object v7, v3

    move-object v3, v9

    goto :goto_1

    :catch_0
    const-string v7, "FailureJSON"

    :goto_1
    if-eqz v3, :cond_8

    const/16 v7, 0x190

    if-eq v0, v7, :cond_5

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_1

    :goto_2
    move-object v3, v4

    goto :goto_0

    .line 261
    :cond_1
    iget v0, v3, Lcom/roblox/client/ac/b$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, -0x3ea

    const-string v3, "Failure2SVDisabled"

    goto :goto_0

    .line 247
    :cond_3
    iget v0, v3, Lcom/roblox/client/ac/b$b;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, -0x3ed

    const-string v3, "Failure2SVFloodCheck"

    goto :goto_0

    .line 222
    :cond_5
    iget v0, v3, Lcom/roblox/client/ac/b$b;->a:I

    if-eq v0, v1, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    goto :goto_2

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/ac/b$2;->a:Lcom/roblox/client/ac/b$a;

    invoke-interface {v0}, Lcom/roblox/client/ac/b$a;->a()V

    const-string v3, "Failure2SVInvalidCode"

    goto :goto_3

    :cond_7
    const/16 v5, -0x3e9

    const-string v3, "Failure2SVUserNotFound"

    goto :goto_0

    :cond_8
    move-object v3, v7

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_9

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM.callAuthVerify2SVCode() code:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/roblox/client/ac/b$2;->c:Lcom/roblox/client/ac/b;

    iget-object v0, v0, Lcom/roblox/client/ac/b;->a:Lcom/roblox/client/s/f;

    iget-object v2, p0, Lcom/roblox/client/ac/b$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V

    if-nez v1, :cond_9

    .line 292
    iget-object p1, p0, Lcom/roblox/client/ac/b$2;->a:Lcom/roblox/client/ac/b$a;

    invoke-interface {p1, v5}, Lcom/roblox/client/ac/b$a;->a(I)V

    :cond_9
    return-void
.end method
