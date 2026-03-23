.class public final Ld/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;
.implements Ld/e;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Ld/o;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Ld/c;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 7

    .line 775
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ld/u;->a(JJJ)V

    .line 777
    iget-object v0, p0, Ld/c;->a:Ld/o;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 779
    :cond_0
    iget v1, v0, Ld/o;->c:I

    iget v2, v0, Ld/o;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 780
    iget-object v1, v0, Ld/o;->a:[B

    iget v2, v0, Ld/o;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    iget p1, v0, Ld/o;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Ld/o;->b:I

    .line 783
    iget-wide p1, p0, Ld/c;->b:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Ld/c;->b:J

    .line 785
    iget p1, v0, Ld/o;->b:I

    iget p2, v0, Ld/o;->c:I

    if-ne p1, p2, :cond_1

    .line 786
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object p1

    iput-object p1, p0, Ld/c;->a:Ld/o;

    .line 787
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    :cond_1
    return p3
.end method

.method public a(B)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1263
    invoke-virtual {p0, p1, v0, v1}, Ld/c;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 1279
    iget-object v2, p0, Ld/c;->a:Ld/o;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 1283
    :cond_0
    iget-wide v5, p0, Ld/c;->b:J

    sub-long v7, v5, p2

    cmp-long v9, v7, p2

    if-gez v9, :cond_1

    :goto_0
    cmp-long v0, v5, p2

    if-lez v0, :cond_3

    .line 1287
    iget-object v2, v2, Ld/o;->g:Ld/o;

    .line 1288
    iget v0, v2, Ld/o;->c:I

    iget v1, v2, Ld/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_0

    .line 1293
    :cond_1
    :goto_1
    iget v5, v2, Ld/o;->c:I

    iget v6, v2, Ld/o;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_2

    .line 1294
    iget-object v2, v2, Ld/o;->f:Ld/o;

    move-wide v0, v5

    goto :goto_1

    :cond_2
    move-wide v5, v0

    .line 1301
    :cond_3
    :goto_2
    iget-wide v0, p0, Ld/c;->b:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_6

    .line 1302
    iget-object v0, v2, Ld/o;->a:[B

    .line 1303
    iget v1, v2, Ld/o;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Ld/o;->c:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 1304
    aget-byte v1, v0, p2

    if-ne v1, p1, :cond_4

    .line 1305
    iget p1, v2, Ld/o;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1310
    :cond_5
    iget p2, v2, Ld/o;->c:I

    iget p3, v2, Ld/o;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 1312
    iget-object v2, v2, Ld/o;->f:Ld/o;

    move-wide p2, v5

    goto :goto_2

    :cond_6
    return-wide v3

    .line 1271
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Ld/c;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1256
    iget-wide v2, p0, Ld/c;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 1258
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Ld/c;->a_(Ld/c;J)V

    return-wide p2

    .line 1255
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1254
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ld/r;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 580
    invoke-interface {p1, p0, v0, v1}, Ld/r;->a_(Ld/c;J)V

    :cond_0
    return-wide v0
.end method

.method public a(Ld/s;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 993
    invoke-interface {p1, p0, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    .line 991
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(I)Ld/c;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 912
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 916
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 917
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    goto :goto_1

    :cond_1
    const/high16 v1, 0x10000

    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_4

    const v1, 0xd800

    if-lt p1, v1, :cond_3

    const v1, 0xdfff

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 921
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 926
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 927
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 928
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 932
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 933
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 934
    invoke-virtual {p0, v1}, Ld/c;->b(I)Ld/c;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 935
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    :goto_1
    return-object p0

    .line 938
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ld/c;JJ)Ld/c;
    .locals 6

    if-eqz p1, :cond_4

    .line 168
    iget-wide v0, p0, Ld/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Ld/u;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-object p0

    .line 171
    :cond_0
    iget-wide v2, p1, Ld/c;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Ld/c;->b:J

    .line 174
    iget-object v2, p0, Ld/c;->a:Ld/o;

    .line 175
    :goto_0
    iget v3, v2, Ld/o;->c:I

    iget v4, v2, Ld/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    .line 176
    iget v3, v2, Ld/o;->c:I

    iget v4, v2, Ld/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 175
    iget-object v2, v2, Ld/o;->f:Ld/o;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 181
    new-instance v3, Ld/o;

    invoke-direct {v3, v2}, Ld/o;-><init>(Ld/o;)V

    .line 182
    iget v4, v3, Ld/o;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Ld/o;->b:I

    .line 183
    iget p2, v3, Ld/o;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Ld/o;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Ld/o;->c:I

    .line 184
    iget-object p2, p1, Ld/c;->a:Ld/o;

    if-nez p2, :cond_2

    .line 185
    iput-object v3, v3, Ld/o;->g:Ld/o;

    iput-object v3, v3, Ld/o;->f:Ld/o;

    iput-object v3, p1, Ld/c;->a:Ld/o;

    goto :goto_2

    .line 187
    :cond_2
    iget-object p2, p2, Ld/o;->g:Ld/o;

    invoke-virtual {p2, v3}, Ld/o;->a(Ld/o;)Ld/o;

    .line 189
    :goto_2
    iget p2, v3, Ld/o;->c:I

    iget p3, v3, Ld/o;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 180
    iget-object v2, v2, Ld/o;->f:Ld/o;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    return-object p0

    .line 167
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(Ld/f;)Ld/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p1, p0}, Ld/f;->a(Ld/c;)V

    return-object p0

    .line 824
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ld/c;
    .locals 2

    .line 830
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ld/c;->a(Ljava/lang/String;II)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;II)Ld/c;
    .locals 7

    if-eqz p1, :cond_d

    if-ltz p2, :cond_c

    if-lt p3, p2, :cond_b

    .line 839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_a

    :goto_0
    if-ge p2, p3, :cond_9

    .line 846
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    .line 849
    invoke-virtual {p0, v2}, Ld/c;->e(I)Ld/o;

    move-result-object v2

    .line 850
    iget-object v3, v2, Ld/o;->a:[B

    .line 851
    iget v4, v2, Ld/o;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 852
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 855
    aput-byte v0, v3, p2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 860
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 862
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v4, v6

    .line 865
    iget p2, v2, Ld/o;->c:I

    sub-int/2addr v4, p2

    .line 866
    iget p2, v2, Ld/o;->c:I

    add-int/2addr p2, v4

    iput p2, v2, Ld/o;->c:I

    .line 867
    iget-wide v0, p0, Ld/c;->b:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->b:J

    move p2, v6

    goto :goto_0

    :cond_2
    const/16 v2, 0x800

    if-ge v0, v2, :cond_3

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 871
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 872
    invoke-virtual {p0, v0}, Ld/c;->b(I)Ld/c;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_8

    const v2, 0xdfff

    if-le v0, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_5

    .line 885
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    const v6, 0xdbff

    if-gt v0, v6, :cond_7

    const v6, 0xdc00

    if-lt v5, v6, :cond_7

    if-le v5, v2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 898
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 899
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 900
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 901
    invoke-virtual {p0, v0}, Ld/c;->b(I)Ld/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 887
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, Ld/c;->b(I)Ld/c;

    move p2, v4

    goto/16 :goto_0

    :cond_8
    :goto_6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 877
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 878
    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 879
    invoke-virtual {p0, v0}, Ld/c;->b(I)Ld/c;

    goto :goto_3

    :cond_9
    return-object p0

    .line 840
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 837
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 835
    :cond_c
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public a()Ld/t;
    .locals 1

    .line 1509
    sget-object v0, Ld/t;->b:Ld/t;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 606
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ld/u;->a(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 613
    :cond_0
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 614
    iget v1, v0, Ld/o;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Ld/o;->c:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 616
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ld/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 619
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Ld/o;->a:[B

    iget v3, v0, Ld/o;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 620
    iget p3, v0, Ld/o;->b:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Ld/o;->b:I

    .line 621
    iget-wide v2, p0, Ld/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ld/c;->b:J

    .line 623
    iget p1, v0, Ld/o;->b:I

    iget p2, v0, Ld/o;->c:I

    if-ne p1, p2, :cond_2

    .line 624
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object p1

    iput-object p1, p0, Ld/c;->a:Ld/o;

    .line 625
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    :cond_2
    return-object v1

    .line 609
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 607
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 599
    :try_start_0
    iget-wide v0, p0, Ld/c;->b:J

    invoke-virtual {p0, v0, v1, p1}, Ld/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 601
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 102
    iget-wide v0, p0, Ld/c;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 767
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 768
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ld/c;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 769
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public a_(Ld/c;J)V
    .locals 6

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    .line 1215
    iget-wide v0, p1, Ld/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ld/u;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    .line 1219
    iget-object v0, p1, Ld/c;->a:Ld/o;

    iget v0, v0, Ld/o;->c:I

    iget-object v1, p1, Ld/c;->a:Ld/o;

    iget v1, v1, Ld/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 1220
    iget-object v0, p0, Ld/c;->a:Ld/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/o;->g:Ld/o;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1221
    iget-boolean v1, v0, Ld/o;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Ld/o;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Ld/o;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, Ld/o;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 1224
    iget-object v1, p1, Ld/c;->a:Ld/o;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Ld/o;->a(Ld/o;I)V

    .line 1225
    iget-wide v0, p1, Ld/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Ld/c;->b:J

    .line 1226
    iget-wide v0, p0, Ld/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ld/c;->b:J

    return-void

    .line 1231
    :cond_2
    iget-object v0, p1, Ld/c;->a:Ld/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ld/o;->a(I)Ld/o;

    move-result-object v0

    iput-object v0, p1, Ld/c;->a:Ld/o;

    .line 1236
    :cond_3
    iget-object v0, p1, Ld/c;->a:Ld/o;

    .line 1237
    iget v1, v0, Ld/o;->c:I

    iget v2, v0, Ld/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1238
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object v3

    iput-object v3, p1, Ld/c;->a:Ld/o;

    .line 1239
    iget-object v3, p0, Ld/c;->a:Ld/o;

    if-nez v3, :cond_4

    .line 1240
    iput-object v0, p0, Ld/c;->a:Ld/o;

    .line 1241
    iput-object v0, v0, Ld/o;->g:Ld/o;

    iput-object v0, v0, Ld/o;->f:Ld/o;

    goto :goto_3

    .line 1243
    :cond_4
    iget-object v3, v3, Ld/o;->g:Ld/o;

    .line 1244
    invoke-virtual {v3, v0}, Ld/o;->a(Ld/o;)Ld/o;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Ld/o;->b()V

    .line 1247
    :goto_3
    iget-wide v3, p1, Ld/c;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Ld/c;->b:J

    .line 1248
    iget-wide v3, p0, Ld/c;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ld/c;->b:J

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void

    .line 1214
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1213
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public b()J
    .locals 2

    .line 60
    iget-wide v0, p0, Ld/c;->b:J

    return-wide v0
.end method

.method public b(I)Ld/c;
    .locals 4

    const/4 v0, 0x1

    .line 1009
    invoke-virtual {p0, v0}, Ld/c;->e(I)Ld/o;

    move-result-object v0

    .line 1010
    iget-object v1, v0, Ld/o;->a:[B

    iget v2, v0, Ld/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ld/o;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1011
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->b:J

    return-object p0
.end method

.method public b([B)Ld/c;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 968
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ld/c;->b([BII)Ld/c;

    move-result-object p1

    return-object p1

    .line 967
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)Ld/c;
    .locals 9

    if-eqz p1, :cond_1

    .line 973
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ld/u;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, v0}, Ld/c;->e(I)Ld/o;

    move-result-object v0

    sub-int v1, p3, p2

    .line 979
    iget v2, v0, Ld/o;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 980
    iget-object v2, v0, Ld/o;->a:[B

    iget v3, v0, Ld/o;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 983
    iget v2, v0, Ld/o;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Ld/o;->c:I

    goto :goto_0

    .line 986
    :cond_0
    iget-wide p1, p0, Ld/c;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Ld/c;->b:J

    return-object p0

    .line 972
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public synthetic b(Ld/f;)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->a(Ld/f;)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->a(Ljava/lang/String;)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Z
    .locals 3

    .line 106
    iget-wide v0, p0, Ld/c;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(J)B
    .locals 6

    .line 295
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Ld/u;->a(JJJ)V

    .line 296
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 297
    :goto_0
    iget v1, v0, Ld/o;->c:I

    iget v2, v0, Ld/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 298
    iget-object v1, v0, Ld/o;->a:[B

    iget v0, v0, Ld/o;->b:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    aget-byte p1, v1, v0

    return p1

    :cond_0
    sub-long/2addr p1, v1

    .line 296
    iget-object v0, v0, Ld/o;->f:Ld/o;

    goto :goto_0
.end method

.method public c()Ld/c;
    .locals 0

    return-object p0
.end method

.method public c(I)Ld/c;
    .locals 5

    const/4 v0, 0x2

    .line 1016
    invoke-virtual {p0, v0}, Ld/c;->e(I)Ld/o;

    move-result-object v0

    .line 1017
    iget-object v1, v0, Ld/o;->a:[B

    .line 1018
    iget v2, v0, Ld/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1019
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1020
    aput-byte p1, v1, v3

    .line 1021
    iput v2, v0, Ld/o;->c:I

    .line 1022
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->b:J

    return-object p0
.end method

.method public synthetic c([B)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->b([B)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c([BII)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Ld/c;->b([BII)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ld/c;->u()Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(I)Ld/c;
    .locals 5

    const/4 v0, 0x4

    .line 1031
    invoke-virtual {p0, v0}, Ld/c;->e(I)Ld/o;

    move-result-object v0

    .line 1032
    iget-object v1, v0, Ld/o;->a:[B

    .line 1033
    iget v2, v0, Ld/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1034
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1035
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1036
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1037
    aput-byte p1, v1, v3

    .line 1038
    iput v2, v0, Ld/o;->c:I

    .line 1039
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->b:J

    return-object p0
.end method

.method public d(J)Ld/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 529
    new-instance v0, Ld/f;

    invoke-virtual {p0, p1, p2}, Ld/c;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ld/f;-><init>([B)V

    return-object v0
.end method

.method public d()Ljava/io/OutputStream;
    .locals 1

    .line 68
    new-instance v0, Ld/c$1;

    invoke-direct {v0, p0}, Ld/c$1;-><init>(Ld/c;)V

    return-object v0
.end method

.method public e()Ld/c;
    .locals 0

    return-object p0
.end method

.method e(I)Ld/o;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1150
    iget-object v1, p0, Ld/c;->a:Ld/o;

    if-nez v1, :cond_0

    .line 1151
    invoke-static {}, Ld/p;->a()Ld/o;

    move-result-object p1

    iput-object p1, p0, Ld/c;->a:Ld/o;

    .line 1152
    iput-object p1, p1, Ld/o;->g:Ld/o;

    iput-object p1, p1, Ld/o;->f:Ld/o;

    return-object p1

    .line 1155
    :cond_0
    iget-object v1, v1, Ld/o;->g:Ld/o;

    .line 1156
    iget v2, v1, Ld/o;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean p1, v1, Ld/o;->e:Z

    if-nez p1, :cond_2

    .line 1157
    :cond_1
    invoke-static {}, Ld/p;->a()Ld/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Ld/o;->a(Ld/o;)Ld/o;

    move-result-object v1

    :cond_2
    return-object v1

    .line 1148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public e(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 594
    sget-object v0, Ld/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Ld/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1553
    :cond_0
    instance-of v1, p1, Ld/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1554
    :cond_1
    check-cast p1, Ld/c;

    .line 1555
    iget-wide v3, p0, Ld/c;->b:J

    iget-wide v5, p1, Ld/c;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1558
    :cond_3
    iget-object v1, p0, Ld/c;->a:Ld/o;

    .line 1559
    iget-object p1, p1, Ld/c;->a:Ld/o;

    .line 1560
    iget v3, v1, Ld/o;->b:I

    .line 1561
    iget v4, p1, Ld/o;->b:I

    .line 1563
    :goto_0
    iget-wide v7, p0, Ld/c;->b:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 1564
    iget v7, v1, Ld/o;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Ld/o;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 1567
    iget-object v10, v1, Ld/o;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Ld/o;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_1

    .line 1570
    :cond_5
    iget v9, v1, Ld/o;->c:I

    if-ne v3, v9, :cond_6

    .line 1571
    iget-object v1, v1, Ld/o;->f:Ld/o;

    .line 1572
    iget v3, v1, Ld/o;->b:I

    .line 1575
    :cond_6
    iget v9, p1, Ld/o;->c:I

    if-ne v4, v9, :cond_7

    .line 1576
    iget-object p1, p1, Ld/o;->f:Ld/o;

    .line 1577
    iget v4, p1, Ld/o;->b:I

    :cond_7
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f(I)Ld/f;
    .locals 1

    if-nez p1, :cond_0

    .line 1631
    sget-object p1, Ld/f;->b:Ld/f;

    return-object p1

    .line 1632
    :cond_0
    new-instance v0, Ld/q;

    invoke-direct {v0, p0, p1}, Ld/q;-><init>(Ld/c;I)V

    return-object v0
.end method

.method f(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    .line 653
    invoke-virtual {p0, v2, v3}, Ld/c;->c(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 655
    invoke-virtual {p0, v2, v3}, Ld/c;->e(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 656
    invoke-virtual {p0, v0, v1}, Ld/c;->h(J)V

    return-object p1

    .line 661
    :cond_0
    invoke-virtual {p0, p1, p2}, Ld/c;->e(J)Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-virtual {p0, v0, v1}, Ld/c;->h(J)V

    return-object p1
.end method

.method public f()Z
    .locals 5

    .line 98
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public synthetic g(I)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->d(I)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .line 110
    new-instance v0, Ld/c$2;

    invoke-direct {v0, p0}, Ld/c$2;-><init>(Ld/c;)V

    return-object v0
.end method

.method public g(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 751
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ld/u;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 756
    new-array p1, p2, [B

    .line 757
    invoke-virtual {p0, p1}, Ld/c;->a([B)V

    return-object p1

    .line 753
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()J
    .locals 5

    .line 260
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 264
    :cond_0
    iget-object v2, p0, Ld/c;->a:Ld/o;

    iget-object v2, v2, Ld/o;->g:Ld/o;

    .line 265
    iget v3, v2, Ld/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, Ld/o;->e:Z

    if-eqz v3, :cond_1

    .line 266
    iget v3, v2, Ld/o;->c:I

    iget v2, v2, Ld/o;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public synthetic h(I)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->c(I)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public h(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 808
    iget-object v0, p0, Ld/c;->a:Ld/o;

    if-eqz v0, :cond_1

    .line 810
    iget v0, v0, Ld/o;->c:I

    iget-object v1, p0, Ld/c;->a:Ld/o;

    iget v1, v1, Ld/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 811
    iget-wide v2, p0, Ld/c;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->b:J

    sub-long/2addr p1, v4

    .line 813
    iget-object v0, p0, Ld/c;->a:Ld/o;

    iget v2, v0, Ld/o;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Ld/o;->b:I

    .line 815
    iget-object v0, p0, Ld/c;->a:Ld/o;

    iget v0, v0, Ld/o;->b:I

    iget-object v1, p0, Ld/c;->a:Ld/o;

    iget v1, v1, Ld/o;->c:I

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 817
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object v1

    iput-object v1, p0, Ld/c;->a:Ld/o;

    .line 818
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    goto :goto_0

    .line 808
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1585
    iget-object v0, p0, Ld/c;->a:Ld/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1589
    :cond_1
    iget v2, v0, Ld/o;->b:I

    iget v3, v0, Ld/o;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1590
    iget-object v4, v0, Ld/o;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1592
    :cond_2
    iget-object v0, v0, Ld/o;->f:Ld/o;

    .line 1593
    iget-object v2, p0, Ld/c;->a:Ld/o;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public i()B
    .locals 9

    .line 273
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 275
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 276
    iget v1, v0, Ld/o;->b:I

    .line 277
    iget v2, v0, Ld/o;->c:I

    .line 279
    iget-object v3, v0, Ld/o;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 280
    aget-byte v1, v3, v1

    .line 281
    iget-wide v5, p0, Ld/c;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ld/c;->b:J

    if-ne v4, v2, :cond_0

    .line 284
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->a:Ld/o;

    .line 285
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    goto :goto_0

    .line 287
    :cond_0
    iput v4, v0, Ld/o;->b:I

    :goto_0
    return v1

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(J)Ld/c;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1071
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 1078
    invoke-virtual {p0, p1}, Ld/c;->a(Ljava/lang/String;)Ld/c;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_a

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_6

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_4

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_b

    const/16 v3, 0x9

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    goto :goto_0

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d

    const/16 v3, 0xb

    goto :goto_0

    :cond_d
    const/16 v3, 0xc

    goto :goto_0

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_f

    const/16 v3, 0xd

    goto :goto_0

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_10

    const/16 v3, 0xe

    goto :goto_0

    :cond_10
    const/16 v3, 0xf

    goto :goto_0

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_12

    const/16 v3, 0x10

    goto :goto_0

    :cond_12
    const/16 v3, 0x11

    goto :goto_0

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_14

    const/16 v3, 0x12

    goto :goto_0

    :cond_14
    const/16 v3, 0x13

    :goto_0
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    .line 1107
    :cond_15
    invoke-virtual {p0, v3}, Ld/c;->e(I)Ld/o;

    move-result-object v4

    .line 1108
    iget-object v5, v4, Ld/o;->a:[B

    .line 1109
    iget v8, v4, Ld/o;->c:I

    add-int/2addr v8, v3

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1111
    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    .line 1112
    sget-object v9, Ld/c;->c:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 1113
    div-long/2addr p1, v6

    goto :goto_1

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1116
    aput-byte p1, v5, v8

    .line 1119
    :cond_17
    iget p1, v4, Ld/o;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Ld/o;->c:I

    .line 1120
    iget-wide p1, p0, Ld/c;->b:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ld/c;->b:J

    return-object p0
.end method

.method public synthetic i(I)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public j(J)Ld/c;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1127
    invoke-virtual {p0, p1}, Ld/c;->b(I)Ld/c;

    move-result-object p1

    return-object p1

    .line 1130
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1132
    invoke-virtual {p0, v0}, Ld/c;->e(I)Ld/o;

    move-result-object v2

    .line 1133
    iget-object v3, v2, Ld/o;->a:[B

    .line 1134
    iget v4, v2, Ld/o;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Ld/o;->c:I

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1135
    sget-object v6, Ld/c;->c:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1138
    :cond_1
    iget p1, v2, Ld/o;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Ld/o;->c:I

    .line 1139
    iget-wide p1, p0, Ld/c;->b:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Ld/c;->b:J

    return-object p0
.end method

.method public j()S
    .locals 8

    .line 304
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 306
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 307
    iget v1, v0, Ld/o;->b:I

    .line 308
    iget v4, v0, Ld/o;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 312
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 313
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 317
    :cond_0
    iget-object v5, v0, Ld/o;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 318
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 320
    iget-wide v5, p0, Ld/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Ld/c;->b:J

    if-ne v7, v4, :cond_1

    .line 323
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->a:Ld/o;

    .line 324
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    goto :goto_0

    .line 326
    :cond_1
    iput v7, v0, Ld/o;->b:I

    :goto_0
    int-to-short v0, v1

    return v0

    .line 304
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ld/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()I
    .locals 8

    .line 333
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 335
    iget-object v0, p0, Ld/c;->a:Ld/o;

    .line 336
    iget v1, v0, Ld/o;->b:I

    .line 337
    iget v4, v0, Ld/o;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 341
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 342
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 344
    invoke-virtual {p0}, Ld/c;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 347
    :cond_0
    iget-object v5, v0, Ld/o;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 348
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 352
    iget-wide v5, p0, Ld/c;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Ld/c;->b:J

    if-ne v7, v4, :cond_1

    .line 355
    invoke-virtual {v0}, Ld/o;->a()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->a:Ld/o;

    .line 356
    invoke-static {v0}, Ld/p;->a(Ld/o;)V

    goto :goto_0

    .line 358
    :cond_1
    iput v7, v0, Ld/o;->b:I

    :goto_0
    return v1

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ld/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic k(J)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Ld/c;->j(J)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(J)Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Ld/c;->i(J)Ld/c;

    move-result-object p1

    return-object p1
.end method

.method public l()S
    .locals 1

    .line 399
    invoke-virtual {p0}, Ld/c;->j()S

    move-result v0

    invoke-static {v0}, Ld/u;->a(S)S

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .line 403
    invoke-virtual {p0}, Ld/c;->k()I

    move-result v0

    invoke-static {v0}, Ld/u;->a(I)I

    move-result v0

    return v0
.end method

.method public n()J
    .locals 15

    .line 469
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 476
    :cond_0
    iget-object v6, p0, Ld/c;->a:Ld/o;

    .line 478
    iget-object v7, v6, Ld/o;->a:[B

    .line 479
    iget v8, v6, Ld/o;->b:I

    .line 480
    iget v9, v6, Ld/o;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 485
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x61

    :goto_1
    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x41

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_3
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Ld/c;->j(J)Ld/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Ld/c;->b(I)Ld/c;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ld/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 494
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 513
    invoke-virtual {v6}, Ld/o;->a()Ld/o;

    move-result-object v7

    iput-object v7, p0, Ld/c;->a:Ld/o;

    .line 514
    invoke-static {v6}, Ld/p;->a(Ld/o;)V

    goto :goto_4

    .line 516
    :cond_7
    iput v8, v6, Ld/o;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 518
    iget-object v6, p0, Ld/c;->a:Ld/o;

    if-nez v6, :cond_0

    .line 520
    :cond_8
    iget-wide v1, p0, Ld/c;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Ld/c;->b:J

    return-wide v4

    .line 469
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public o()Ld/f;
    .locals 2

    .line 525
    new-instance v0, Ld/f;

    invoke-virtual {p0}, Ld/c;->s()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ld/f;-><init>([B)V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 587
    :try_start_0
    iget-wide v0, p0, Ld/c;->b:J

    sget-object v2, Ld/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Ld/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public q()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 642
    invoke-virtual {p0, v0}, Ld/c;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 649
    invoke-virtual {p0, v0, v1}, Ld/c;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x20

    .line 645
    iget-wide v5, p0, Ld/c;->b:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ld/c;->a(Ld/c;JJ)Ld/c;

    .line 646
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/c;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ld/c;->o()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public r()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 668
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 670
    invoke-virtual {p0, v2, v3}, Ld/c;->c(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_9

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 705
    :goto_0
    iget-wide v7, p0, Ld/c;->b:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_8

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    .line 714
    invoke-virtual {p0, v7, v8}, Ld/c;->c(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    :cond_3
    invoke-virtual {p0, v7, v8}, Ld/c;->h(J)V

    return v4

    .line 725
    :cond_4
    invoke-virtual {p0, v9, v10}, Ld/c;->h(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_5

    return v4

    :cond_5
    const v0, 0xd800

    if-lt v1, v0, :cond_6

    const v0, 0xdfff

    if-gt v1, v0, :cond_6

    return v4

    :cond_6
    if-ge v1, v6, :cond_7

    return v4

    :cond_7
    return v1

    .line 706
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ld/c;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-wide/16 v0, 0x1

    .line 701
    invoke-virtual {p0, v0, v1}, Ld/c;->h(J)V

    return v4

    .line 668
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public s()[B
    .locals 2

    .line 744
    :try_start_0
    iget-wide v0, p0, Ld/c;->b:J

    invoke-virtual {p0, v0, v1}, Ld/c;->g(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public t()V
    .locals 2

    .line 799
    :try_start_0
    iget-wide v0, p0, Ld/c;->b:J

    invoke-virtual {p0, v0, v1}, Ld/c;->h(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 801
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1602
    invoke-virtual {p0}, Ld/c;->v()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ld/c;
    .locals 6

    .line 1607
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    .line 1608
    iget-wide v1, p0, Ld/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1610
    :cond_0
    new-instance v1, Ld/o;

    iget-object v2, p0, Ld/c;->a:Ld/o;

    invoke-direct {v1, v2}, Ld/o;-><init>(Ld/o;)V

    iput-object v1, v0, Ld/c;->a:Ld/o;

    .line 1611
    iput-object v1, v1, Ld/o;->g:Ld/o;

    iput-object v1, v1, Ld/o;->f:Ld/o;

    .line 1612
    iget-object v1, p0, Ld/c;->a:Ld/o;

    :goto_0
    iget-object v1, v1, Ld/o;->f:Ld/o;

    iget-object v2, p0, Ld/c;->a:Ld/o;

    if-eq v1, v2, :cond_1

    .line 1613
    iget-object v2, v0, Ld/c;->a:Ld/o;

    iget-object v2, v2, Ld/o;->g:Ld/o;

    new-instance v3, Ld/o;

    invoke-direct {v3, v1}, Ld/o;-><init>(Ld/o;)V

    invoke-virtual {v2, v3}, Ld/o;->a(Ld/o;)Ld/o;

    goto :goto_0

    .line 1615
    :cond_1
    iget-wide v1, p0, Ld/c;->b:J

    iput-wide v1, v0, Ld/c;->b:J

    return-object v0
.end method

.method public v()Ld/f;
    .locals 5

    .line 1621
    iget-wide v0, p0, Ld/c;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    .line 1624
    invoke-virtual {p0, v1}, Ld/c;->f(I)Ld/f;

    move-result-object v0

    return-object v0

    .line 1622
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ld/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic w()Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ld/c;->e()Ld/c;

    move-result-object v0

    return-object v0
.end method
