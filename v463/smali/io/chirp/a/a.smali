.class public Lio/chirp/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lio/chirp/a/a;->e:I

    return v0
.end method

.method public a(I)Lio/chirp/a/a;
    .locals 0

    iput p1, p0, Lio/chirp/a/a;->a:I

    return-object p0
.end method

.method public b()Lio/chirp/a/a;
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lio/chirp/a/a;->b:I

    const/16 v0, 0x10

    iput v0, p0, Lio/chirp/a/a;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lio/chirp/a/a;->d:I

    iget v2, p0, Lio/chirp/a/a;->a:I

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lio/chirp/a/a;->e:I

    return-object p0
.end method

.method public c()Landroid/media/AudioRecord;
    .locals 7

    new-instance v6, Landroid/media/AudioRecord;

    iget v1, p0, Lio/chirp/a/a;->b:I

    iget v2, p0, Lio/chirp/a/a;->a:I

    iget v3, p0, Lio/chirp/a/a;->c:I

    iget v4, p0, Lio/chirp/a/a;->d:I

    iget v5, p0, Lio/chirp/a/a;->e:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    return-object v6
.end method
