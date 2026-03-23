.class Lcom/c/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/aa$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/c/a/d;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field m:I

.field n:I


# direct methods
.method constructor <init>(Lcom/c/a/d;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/c/a/aa;->b:Lcom/c/a/d;

    .line 53
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/c/a/aa;->a:Landroid/os/HandlerThread;

    .line 54
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 55
    iget-object p1, p0, Lcom/c/a/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/c/a/ae;->a(Landroid/os/Looper;)V

    .line 56
    new-instance p1, Lcom/c/a/aa$a;

    iget-object v0, p0, Lcom/c/a/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/c/a/aa$a;-><init>(Landroid/os/Looper;Lcom/c/a/aa;)V

    iput-object p1, p0, Lcom/c/a/aa;->c:Landroid/os/Handler;

    return-void
.end method

.method private static a(IJ)J
    .locals 2

    int-to-long v0, p0

    .line 123
    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 118
    invoke-static {p1}, Lcom/c/a/ae;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 119
    iget-object v0, p0, Lcom/c/a/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/c/a/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(J)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/c/a/aa;->c:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/c/a/aa;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 4

    .line 92
    iget v0, p0, Lcom/c/a/aa;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/aa;->l:I

    .line 93
    iget-wide v0, p0, Lcom/c/a/aa;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/c/a/aa;->f:J

    .line 94
    iget p1, p0, Lcom/c/a/aa;->l:I

    invoke-static {p1, v0, v1}, Lcom/c/a/aa;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/a/aa;->i:J

    return-void
.end method

.method b()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/c/a/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method b(J)V
    .locals 3

    .line 98
    iget v0, p0, Lcom/c/a/aa;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/aa;->m:I

    .line 99
    iget-wide v1, p0, Lcom/c/a/aa;->g:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/c/a/aa;->g:J

    .line 100
    invoke-static {v0, v1, v2}, Lcom/c/a/aa;->a(IJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/c/a/aa;->j:J

    return-void
.end method

.method b(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x3

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/c/a/aa;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method c()V
    .locals 4

    .line 84
    iget-wide v0, p0, Lcom/c/a/aa;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/c/a/aa;->d:J

    return-void
.end method

.method c(J)V
    .locals 2

    .line 104
    iget v0, p0, Lcom/c/a/aa;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/aa;->n:I

    .line 105
    iget-wide v0, p0, Lcom/c/a/aa;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/c/a/aa;->h:J

    .line 106
    iget p1, p0, Lcom/c/a/aa;->m:I

    invoke-static {p1, v0, v1}, Lcom/c/a/aa;->a(IJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/c/a/aa;->k:J

    return-void
.end method

.method d()V
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/c/a/aa;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/c/a/aa;->e:J

    return-void
.end method

.method e()Lcom/c/a/ab;
    .locals 28

    move-object/from16 v0, p0

    .line 110
    new-instance v25, Lcom/c/a/ab;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/c/a/aa;->b:Lcom/c/a/d;

    invoke-interface {v2}, Lcom/c/a/d;->b()I

    move-result v2

    iget-object v3, v0, Lcom/c/a/aa;->b:Lcom/c/a/d;

    invoke-interface {v3}, Lcom/c/a/d;->a()I

    move-result v3

    iget-wide v4, v0, Lcom/c/a/aa;->d:J

    iget-wide v6, v0, Lcom/c/a/aa;->e:J

    iget-wide v8, v0, Lcom/c/a/aa;->f:J

    iget-wide v10, v0, Lcom/c/a/aa;->g:J

    iget-wide v12, v0, Lcom/c/a/aa;->h:J

    iget-wide v14, v0, Lcom/c/a/aa;->i:J

    move-object/from16 v26, v1

    move/from16 v27, v2

    iget-wide v1, v0, Lcom/c/a/aa;->j:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/c/a/aa;->k:J

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/c/a/aa;->l:I

    move/from16 v20, v1

    iget v1, v0, Lcom/c/a/aa;->m:I

    move/from16 v21, v1

    iget v1, v0, Lcom/c/a/aa;->n:I

    move/from16 v22, v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lcom/c/a/ab;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method
