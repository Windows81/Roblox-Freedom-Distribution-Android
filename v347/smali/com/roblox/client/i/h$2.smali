.class Lcom/roblox/client/i/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/h;->a(Landroid/content/Context;Lcom/roblox/client/i/h$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/h$f;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/i/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    iput-object p2, p0, Lcom/roblox/client/i/h$2;->a:Lcom/roblox/client/i/h$f;

    iput-object p3, p0, Lcom/roblox/client/i/h$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 12

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    invoke-static {v0}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h;)J

    move-result-wide v10

    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v10

    .line 171
    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 200
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->a:Lcom/roblox/client/i/h$f;

    invoke-interface {v0}, Lcom/roblox/client/i/h$f;->d()V

    .line 201
    const-string v1, "FailureSessionCheck"

    .line 204
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->c()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    .line 206
    invoke-static {v0}, Lcom/roblox/client/i/h;->b(Lcom/roblox/client/i/h;)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()J

    move-result-wide v6

    .line 201
    invoke-static/range {v1 .. v9}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 211
    :goto_1
    return-void

    .line 169
    :cond_0
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 173
    :sswitch_0
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->a:Lcom/roblox/client/i/h$f;

    invoke-interface {v0}, Lcom/roblox/client/i/h$f;->a()V

    .line 174
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    iget-object v1, p0, Lcom/roblox/client/i/h$2;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/roblox/client/i/h$2$1;

    invoke-direct {v4, p0}, Lcom/roblox/client/i/h$2$1;-><init>(Lcom/roblox/client/i/h$2;)V

    invoke-static {v0, v1, v3, v4}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h;Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/i/h$e;)V

    .line 181
    invoke-static {v2}, Lcom/roblox/client/i/f;->c(I)V

    goto :goto_1

    .line 185
    :sswitch_1
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    iget-object v1, p0, Lcom/roblox/client/i/h$2;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h;Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/i/h$2;->a:Lcom/roblox/client/i/h$f;

    invoke-interface {v0}, Lcom/roblox/client/i/h$f;->b()V

    .line 188
    const-string v1, "FailureInvalidUserSession"

    .line 191
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->c()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    .line 193
    invoke-static {v0}, Lcom/roblox/client/i/h;->b(Lcom/roblox/client/i/h;)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()J

    move-result-wide v6

    .line 188
    invoke-static/range {v1 .. v9}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/roblox/client/i/h$2;->c:Lcom/roblox/client/i/h;

    invoke-static {v0}, Lcom/roblox/client/i/h;->c(Lcom/roblox/client/i/h;)J

    move-result-wide v4

    move-wide v0, v10

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/i/f;->a(JJJ)V

    goto :goto_1

    .line 171
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method
