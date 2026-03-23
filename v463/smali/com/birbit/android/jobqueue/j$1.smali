.class Lcom/birbit/android/jobqueue/j$1;
.super Lcom/birbit/android/jobqueue/messaging/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/j;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/j;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-direct {p0}, Lcom/birbit/android/jobqueue/messaging/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 2

    .line 215
    sget-object v0, Lcom/birbit/android/jobqueue/j$2;->a:[I

    iget-object v1, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/k;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/k;)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/e;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/e;)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/h;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/h;)V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/c;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/c;)V

    goto :goto_0

    .line 229
    :pswitch_4
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/e;->b()V

    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/j;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/j;)V

    goto :goto_0

    .line 220
    :pswitch_6
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/g;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/messaging/a/g;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;)V

    goto :goto_0

    .line 217
    :pswitch_7
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/a;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/a;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {v2}, Lcom/birbit/android/jobqueue/j;->b(Lcom/birbit/android/jobqueue/j;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "joq idle. running:? %s"

    invoke-static {v2, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {v1}, Lcom/birbit/android/jobqueue/j;->b(Lcom/birbit/android/jobqueue/j;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v1, v0}, Lcom/birbit/android/jobqueue/j;->a(Z)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v2, "Job queue idle. next job at: %s"

    .line 255
    invoke-static {v2, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {v0}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/j;)Lcom/birbit/android/jobqueue/messaging/c;

    move-result-object v0

    const-class v2, Lcom/birbit/android/jobqueue/messaging/a/f;

    invoke-virtual {v0, v2}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/f;

    .line 259
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/birbit/android/jobqueue/messaging/e;->postAt(Lcom/birbit/android/jobqueue/messaging/b;J)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {v0}, Lcom/birbit/android/jobqueue/j;->d(Lcom/birbit/android/jobqueue/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/JobQueue;->count()I

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    invoke-static {v0, v3}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/j;Z)Z

    .line 264
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j$1;->a:Lcom/birbit/android/jobqueue/j;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a()V

    :cond_2
    :goto_0
    return-void
.end method
