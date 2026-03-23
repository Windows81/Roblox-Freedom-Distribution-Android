.class public abstract Landroid/support/v4/a/a;
.super Landroid/support/v4/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/a/e",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Landroid/support/v4/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field volatile b:Landroid/support/v4/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/a",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/support/v4/a/g;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 128
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v4/a/e;-><init>(Landroid/content/Context;)V

    .line 123
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    .line 132
    iput-object p2, p0, Landroid/support/v4/a/a;->f:Ljava/util/concurrent/Executor;

    .line 133
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/a/e;->a()V

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/a/a;->r()Z

    .line 153
    new-instance v0, Landroid/support/v4/a/a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/a/a$a;-><init>(Landroid/support/v4/a/a;)V

    iput-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/a/a;->c()V

    .line 156
    return-void
.end method

.method a(Landroid/support/v4/a/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    if-ne v0, p1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/support/v4/a/a;->z()V

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    .line 239
    invoke-virtual {p0}, Landroid/support/v4/a/a;->l()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/a/a;->c()V

    .line 242
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/e;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 357
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-boolean v0, v0, Landroid/support/v4/a/a$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 361
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    iget-boolean v0, v0, Landroid/support/v4/a/a$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/g/o;->a(JLjava/io/PrintWriter;)V

    .line 366
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide v0, p0, Landroid/support/v4/a/a;->d:J

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 367
    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/g/o;->a(JJLjava/io/PrintWriter;)V

    .line 369
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 371
    :cond_2
    return-void
.end method

.method b(Landroid/support/v4/a/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/a",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    if-eq v0, p1, :cond_0

    .line 247
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/a/a;->a(Landroid/support/v4/a/a$a;Ljava/lang/Object;)V

    .line 260
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/a/a;->y()V

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/a/a;->d:J

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    .line 257
    invoke-virtual {p0, p2}, Landroid/support/v4/a/a;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    if-eqz v1, :cond_2

    .line 162
    iget-boolean v1, p0, Landroid/support/v4/a/a;->r:Z

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/a/a;->u:Z

    .line 165
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-boolean v1, v1, Landroid/support/v4/a/a$a;->a:Z

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iput-boolean v0, v1, Landroid/support/v4/a/a$a;->a:Z

    .line 172
    iget-object v1, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    :cond_1
    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    .line 195
    :cond_2
    :goto_0
    return v0

    .line 176
    :cond_3
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-boolean v1, v1, Landroid/support/v4/a/a$a;->a:Z

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iput-boolean v0, v1, Landroid/support/v4/a/a$a;->a:Z

    .line 181
    iget-object v1, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/a$a;->a(Z)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iput-object v1, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    .line 189
    invoke-virtual {p0}, Landroid/support/v4/a/a;->f()V

    .line 191
    :cond_5
    iput-object v3, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    goto :goto_0
.end method

.method c()V
    .locals 6

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-boolean v0, v0, Landroid/support/v4/a/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/a$a;->a:Z

    .line 212
    iget-object v0, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    iget-wide v0, p0, Landroid/support/v4/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Landroid/support/v4/a/a;->d:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 221
    iget-object v0, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/a/a$a;->a:Z

    .line 222
    iget-object v0, p0, Landroid/support/v4/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-wide v2, p0, Landroid/support/v4/a/a;->d:J

    iget-wide v4, p0, Landroid/support/v4/a/a;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/a;->a:Landroid/support/v4/a/a$a;

    iget-object v2, p0, Landroid/support/v4/a/a;->f:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/a$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/a/g;

    goto :goto_0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/support/v4/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
