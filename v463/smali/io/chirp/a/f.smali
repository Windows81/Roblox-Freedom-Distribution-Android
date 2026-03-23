.class public Lio/chirp/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/chirp/a/f$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/concurrent/Semaphore;


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/chirp/a/f;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lio/chirp/a/f;->c:I

    iput v0, p0, Lio/chirp/a/f;->d:I

    iput v0, p0, Lio/chirp/a/f;->e:I

    iput p1, p0, Lio/chirp/a/f;->c:I

    new-array p1, p1, [B

    iput-object p1, p0, Lio/chirp/a/f;->b:[B

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 4

    iget v0, p0, Lio/chirp/a/f;->c:I

    iget v1, p0, Lio/chirp/a/f;->e:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    :try_start_0
    sget-object v0, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lio/chirp/a/f;->b:[B

    iget v2, p0, Lio/chirp/a/f;->d:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lio/chirp/a/f;->c:I

    rem-int/2addr v2, v1

    iput v2, p0, Lio/chirp/a/f;->d:I

    iget v2, p0, Lio/chirp/a/f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/chirp/a/f;->e:I

    if-gt v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lio/chirp/a/f;->e:I

    sget-object p1, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "buffer full"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return p2

    :cond_2
    :try_start_1
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "buffer busy"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "RingBuffer put - buffer busy, cannot acquire semaphore"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "RingBuffer put - buffer full"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lio/chirp/a/f;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lio/chirp/a/f;->b:[B

    return-void
.end method

.method public b([BI)I
    .locals 4

    iget v0, p0, Lio/chirp/a/f;->e:I

    if-gt p2, v0, :cond_3

    :try_start_0
    sget-object v0, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    iget v0, p0, Lio/chirp/a/f;->d:I

    iget v1, p0, Lio/chirp/a/f;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lio/chirp/a/f;->c:I

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lio/chirp/a/f;->b:[B

    aget-byte v2, v2, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lio/chirp/a/f;->c:I

    rem-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lio/chirp/a/f;->e:I

    sub-int/2addr p1, p2

    iput p1, p0, Lio/chirp/a/f;->e:I

    sget-object p1, Lio/chirp/a/f;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return p2

    :cond_2
    :try_start_1
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "RingBuffer take - buffer busy"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "RingBuffer take - buffer busy, cannot acquire semaphore"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lio/chirp/a/f$a;

    const-string p2, "RingBuffer take - buffer empty"

    invoke-direct {p1, p0, p2}, Lio/chirp/a/f$a;-><init>(Lio/chirp/a/f;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
