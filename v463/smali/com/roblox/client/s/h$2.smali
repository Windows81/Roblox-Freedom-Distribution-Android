.class Lcom/roblox/client/s/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/h;->a(Landroid/content/Context;Lcom/roblox/client/s/h$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/h$d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/s/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$d;Landroid/content/Context;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/roblox/client/s/h$2;->c:Lcom/roblox/client/s/h;

    iput-object p2, p0, Lcom/roblox/client/s/h$2;->a:Lcom/roblox/client/s/h$d;

    iput-object p3, p0, Lcom/roblox/client/s/h$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 11

    .line 149
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    .line 150
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->c:Lcom/roblox/client/s/h;

    invoke-static {v0}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/s/h;)J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-lez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    move-wide v7, v2

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_2

    const/16 v0, 0x191

    if-eq v1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->a:Lcom/roblox/client/s/h$d;

    invoke-interface {v0}, Lcom/roblox/client/s/h$d;->d()V

    .line 186
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->e()J

    move-result-wide v5

    const-string v0, "FailureSessionCheck"

    .line 183
    invoke-static/range {v0 .. v8}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->c:Lcom/roblox/client/s/h;

    iget-object v2, p0, Lcom/roblox/client/s/h$2;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/s/h;Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->a:Lcom/roblox/client/s/h$d;

    invoke-interface {v0}, Lcom/roblox/client/s/h$d;->b()V

    .line 173
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->e()J

    move-result-wide v5

    const-string v0, "FailureInvalidUserSession"

    .line 170
    invoke-static/range {v0 .. v8}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/roblox/client/s/h$2;->c:Lcom/roblox/client/s/h;

    invoke-static {p1}, Lcom/roblox/client/s/h;->b(Lcom/roblox/client/s/h;)J

    move-result-wide v6

    move-wide v2, v9

    invoke-static/range {v2 .. v7}, Lcom/roblox/client/s/f;->a(JJJ)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->a:Lcom/roblox/client/s/h$d;

    invoke-interface {v0}, Lcom/roblox/client/s/h$d;->a()V

    .line 156
    iget-object v0, p0, Lcom/roblox/client/s/h$2;->c:Lcom/roblox/client/s/h;

    iget-object v2, p0, Lcom/roblox/client/s/h$2;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/roblox/client/s/h$2$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/s/h$2$1;-><init>(Lcom/roblox/client/s/h$2;)V

    invoke-static {v0, v2, p1, v3}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/s/h;Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V

    .line 163
    invoke-static {v1}, Lcom/roblox/client/s/f;->b(I)V

    :goto_1
    return-void
.end method
