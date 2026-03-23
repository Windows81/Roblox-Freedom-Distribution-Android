.class La/a/c$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/c;


# direct methods
.method constructor <init>(La/a/c;)V
    .locals 0

    .line 128
    iput-object p1, p0, La/a/c$1;->a:La/a/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->b(La/a/c;)La/a/e/c;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->b(La/a/c;)La/a/e/c;

    move-result-object v1

    invoke-interface {v1}, La/a/e/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 139
    :cond_0
    invoke-static {}, La/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer - another timer works now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_1
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer - continue working: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 145
    invoke-static {v0}, La/a/c;->a(Z)Z

    .line 146
    invoke-static {}, La/a/c;->c()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 147
    invoke-static {}, La/a/c;->c()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    const/4 v1, 0x0

    .line 148
    invoke-static {v1}, La/a/c;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 150
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->b(La/a/c;)La/a/e/c;

    move-result-object v1

    invoke-interface {v1}, La/a/e/c;->a()La/a/g/a/a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 152
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 153
    invoke-virtual {v1}, La/a/g/a/a;->a()La/a/g/a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 154
    iget-object v4, v3, La/a/g/a;->m:La/a/g/b/d;

    if-nez v4, :cond_2

    goto :goto_2

    .line 160
    :cond_2
    iget-object v4, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v4}, La/a/c;->c(La/a/c;)La/a/e/a;

    move-result-object v4

    new-instance v5, La/a/c$1$1;

    invoke-direct {v5, p0, v1, v2}, La/a/c$1$1;-><init>(La/a/c$1;La/a/g/a/a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v4, v3, v5}, La/a/e/a;->a(La/a/g/a;La/a/d/c;)V

    .line 175
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 177
    iget-object v3, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v3}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error during waiting for result in Timer"

    invoke-static {v3, v4, v2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_1
    invoke-virtual {v1}, La/a/g/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v1, v1, La/a/g/a/a;->b:Z

    if-nez v1, :cond_4

    .line 182
    iget-object v0, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v0}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer - record is valid and unlocked"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 155
    :cond_3
    :goto_2
    iget-object v2, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v2}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Timer - backtrace data or report is null - deleting record"

    invoke-static {v2, v3}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, La/a/c$1;->a:La/a/c;

    invoke-virtual {v2, v1}, La/a/c;->a(La/a/g/a/a;)V

    .line 186
    :cond_4
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->b(La/a/c;)La/a/e/c;

    move-result-object v1

    invoke-interface {v1}, La/a/e/c;->a()La/a/g/a/a;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_5
    :goto_3
    iget-object v0, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v0}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup new timer"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 189
    invoke-static {v0}, La/a/c;->a(Z)Z

    .line 190
    iget-object v0, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v0}, La/a/c;->d(La/a/c;)V

    return-void

    .line 134
    :cond_6
    :goto_4
    iget-object v1, p0, La/a/c$1;->a:La/a/c;

    invoke-static {v1}, La/a/c;->a(La/a/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer - Database context is null or empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
