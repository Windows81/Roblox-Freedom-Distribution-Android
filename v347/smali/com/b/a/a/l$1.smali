.class Lcom/b/a/a/l$1;
.super Lcom/b/a/a/g/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/l;


# direct methods
.method constructor <init>(Lcom/b/a/a/l;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-direct {p0}, Lcom/b/a/a/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/g/b;)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/b/a/a/l$2;->a:[I

    iget-object v1, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/a;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/a;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v0, v0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    check-cast p1, Lcom/b/a/a/g/a/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/f;->a(Lcom/b/a/a/g/a/g;)Z

    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v0}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/j;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/j;)V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v0, v0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->b()V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/c;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/c;)V

    goto :goto_0

    .line 235
    :pswitch_5
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/h;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/h;)V

    goto :goto_0

    .line 238
    :pswitch_6
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/e;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/e;)V

    goto :goto_0

    .line 241
    :pswitch_7
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    check-cast p1, Lcom/b/a/a/g/a/k;

    invoke-static {v0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/k;)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    const-string v0, "joq idle. running:? %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v2}, Lcom/b/a/a/l;->b(Lcom/b/a/a/l;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v0}, Lcom/b/a/a/l;->b(Lcom/b/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-virtual {v0, v4}, Lcom/b/a/a/l;->a(Z)Ljava/lang/Long;

    move-result-object v1

    .line 255
    const-string v0, "Job queue idle. next job at: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    if-eqz v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v0}, Lcom/b/a/a/l;->c(Lcom/b/a/a/l;)Lcom/b/a/a/g/c;

    move-result-object v0

    const-class v2, Lcom/b/a/a/g/a/f;

    invoke-virtual {v0, v2}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/f;

    .line 259
    iget-object v2, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v2, v2, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/b/a/a/g/g;->a(Lcom/b/a/a/g/b;J)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v0, v0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v0}, Lcom/b/a/a/l;->d(Lcom/b/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v0, v0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    invoke-static {v0, v3}, Lcom/b/a/a/l;->a(Lcom/b/a/a/l;Z)Z

    .line 264
    iget-object v0, p0, Lcom/b/a/a/l$1;->a:Lcom/b/a/a/l;

    iget-object v0, v0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    invoke-virtual {v0}, Lcom/b/a/a/j/a;->a()V

    goto :goto_0
.end method
