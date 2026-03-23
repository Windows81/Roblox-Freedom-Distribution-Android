.class public Lio/chirp/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/chirp/a/b;
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-lez v4, :cond_0

    iput v3, p0, Lio/chirp/a/b;->a:I

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :array_0
    .array-data 4
        0xbb80
        0xac44
        0x5622
        0x3e80
        0x2b11
        0x1f40
    .end array-data
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/chirp/a/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lio/chirp/a/b;->g:I

    return v0
.end method

.method public d()Lio/chirp/a/b;
    .locals 3

    invoke-virtual {p0}, Lio/chirp/a/b;->a()Lio/chirp/a/b;

    const/4 v0, 0x2

    iput v0, p0, Lio/chirp/a/b;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lio/chirp/a/b;->c:I

    const/4 v1, 0x3

    iput v1, p0, Lio/chirp/a/b;->d:I

    iput v0, p0, Lio/chirp/a/b;->e:I

    const/4 v1, 0x4

    iput v1, p0, Lio/chirp/a/b;->f:I

    iget v2, p0, Lio/chirp/a/b;->a:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lio/chirp/a/b;->g:I

    return-object p0
.end method

.method public e()Landroid/media/AudioTrack;
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lio/chirp/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lio/chirp/a/b;->c:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lio/chirp/a/b;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lio/chirp/a/b;->a:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lio/chirp/a/b;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lio/chirp/a/b;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lio/chirp/a/b;->g:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    iget v9, p0, Lio/chirp/a/b;->a:I

    iget v10, p0, Lio/chirp/a/b;->f:I

    iget v11, p0, Lio/chirp/a/b;->e:I

    iget v12, p0, Lio/chirp/a/b;->g:I

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0
.end method
