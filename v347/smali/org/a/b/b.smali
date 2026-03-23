.class public Lorg/a/b/b;
.super Lorg/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/b/b$a;
    }
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private h:Lorg/a/d/d;

.field private final i:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/b/b;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/a/b/a;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/b/b;->h:Lorg/a/d/d;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/a/b/b;->i:Ljava/util/Random;

    return-void
.end method

.method private a(Lorg/a/d/d$a;)B
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lorg/a/d/d$a;->a:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 168
    :cond_0
    sget-object v0, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_1

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    sget-object v0, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_2

    .line 171
    const/4 v0, 0x2

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_3

    .line 173
    const/16 v0, 0x8

    goto :goto_0

    .line 174
    :cond_3
    sget-object v0, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_4

    .line 175
    const/16 v0, 0x9

    goto :goto_0

    .line 176
    :cond_4
    sget-object v0, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    if-ne p1, v0, :cond_5

    .line 177
    const/16 v0, 0xa

    goto :goto_0

    .line 178
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/a/d/d$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/f/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(B)Lorg/a/d/d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/c;
        }
    .end annotation

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 244
    :pswitch_0
    new-instance v0, Lorg/a/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_1
    sget-object v0, Lorg/a/d/d$a;->a:Lorg/a/d/d$a;

    .line 241
    :goto_0
    return-object v0

    .line 232
    :pswitch_2
    sget-object v0, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    goto :goto_0

    .line 234
    :pswitch_3
    sget-object v0, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    goto :goto_0

    .line 237
    :pswitch_4
    sget-object v0, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    goto :goto_0

    .line 239
    :pswitch_5
    sget-object v0, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    goto :goto_0

    .line 241
    :pswitch_6
    sget-object v0, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(JI)[B
    .locals 7

    .prologue
    .line 219
    new-array v1, p3, [B

    .line 220
    mul-int/lit8 v0, p3, 0x8

    add-int/lit8 v2, v0, -0x8

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 222
    mul-int/lit8 v3, v0, 0x8

    sub-int v3, v2, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-object v1
.end method

.method public static b(Lorg/a/e/f;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 50
    const-string v1, "Sec-WebSocket-Version"

    invoke-interface {p0, v1}, Lorg/a/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/a/d/d;)Ljava/nio/ByteBuffer;
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/16 v5, -0x80

    const/4 v2, 0x0

    .line 99
    invoke-interface {p1}, Lorg/a/d/d;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 100
    iget-object v0, p0, Lorg/a/b/b;->d:Lorg/a/a$b;

    sget-object v3, Lorg/a/a$b;->a:Lorg/a/a$b;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 101
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v6, 0x7d

    if-gt v3, v6, :cond_1

    move v6, v1

    .line 102
    :goto_1
    if-le v6, v1, :cond_3

    add-int/lit8 v3, v6, 0x1

    :goto_2
    add-int/lit8 v9, v3, 0x1

    if-eqz v0, :cond_4

    move v3, v4

    :goto_3
    add-int/2addr v3, v9

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 103
    invoke-interface {p1}, Lorg/a/d/d;->f()Lorg/a/d/d$a;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/a/b/b;->a(Lorg/a/d/d$a;)B

    move-result v10

    .line 104
    invoke-interface {p1}, Lorg/a/d/d;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_4
    int-to-byte v3, v3

    .line 105
    or-int/2addr v3, v10

    int-to-byte v3, v3

    .line 106
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v10, v3

    invoke-direct {p0, v10, v11, v6}, Lorg/a/b/b;->a(JI)[B

    move-result-object v3

    .line 108
    sget-boolean v10, Lorg/a/b/b;->f:Z

    if-nez v10, :cond_6

    array-length v10, v3

    if-eq v10, v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const v6, 0xffff

    if-gt v3, v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    goto :goto_1

    :cond_3
    move v3, v6

    .line 102
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 104
    goto :goto_4

    .line 110
    :cond_6
    if-ne v6, v1, :cond_8

    .line 111
    aget-byte v1, v3, v2

    if-eqz v0, :cond_7

    :goto_5
    or-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    :goto_6
    if-eqz v0, :cond_d

    .line 122
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/a/b/b;->i:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    :goto_7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 126
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move v5, v2

    .line 111
    goto :goto_5

    .line 112
    :cond_8
    if-ne v6, v7, :cond_a

    .line 113
    if-eqz v0, :cond_9

    :goto_8
    or-int/lit8 v1, v5, 0x7e

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_9
    move v5, v2

    .line 113
    goto :goto_8

    .line 115
    :cond_a
    const/16 v1, 0x8

    if-ne v6, v1, :cond_c

    .line 116
    if-eqz v0, :cond_b

    :goto_9
    or-int/lit8 v1, v5, 0x7f

    int-to-byte v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_b
    move v5, v2

    .line 116
    goto :goto_9

    .line 119
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size representation not supported/specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_d
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 131
    :cond_e
    sget-boolean v0, Lorg/a/b/b;->f:Z

    if-nez v0, :cond_f

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 132
    :cond_f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 134
    return-object v9
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lorg/a/d/e;

    invoke-direct {v0}, Lorg/a/d/e;-><init>()V

    .line 155
    :try_start_0
    invoke-static {p1}, Lorg/a/f/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Z)V

    .line 160
    sget-object v1, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Lorg/a/d/d$a;)V

    .line 161
    invoke-interface {v0, p2}, Lorg/a/d/c;->b(Z)V

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Lorg/a/c/f;

    invoke-direct {v1, v0}, Lorg/a/c/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/a/d/e;

    invoke-direct {v0}, Lorg/a/d/e;-><init>()V

    .line 141
    :try_start_0
    invoke-interface {v0, p1}, Lorg/a/d/c;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Z)V

    .line 146
    sget-object v1, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Lorg/a/d/d$a;)V

    .line 147
    invoke-interface {v0, p2}, Lorg/a/d/c;->b(Z)V

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lorg/a/c/f;

    invoke-direct {v1, v0}, Lorg/a/c/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lorg/a/e/a;)Lorg/a/b/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lorg/a/b/b;->b(Lorg/a/e/f;)I

    move-result v0

    .line 92
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lorg/a/b/b;->a(Lorg/a/e/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/a/b/a$b;->a:Lorg/a/b/a$b;

    .line 94
    :goto_0
    return-object v0

    .line 93
    :cond_1
    sget-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    goto :goto_0
.end method

.method public a(Lorg/a/e/a;Lorg/a/e/h;)Lorg/a/b/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lorg/a/e/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lorg/a/e/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    sget-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_1
    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lorg/a/e/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lorg/a/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-direct {p0, v1}, Lorg/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lorg/a/b/a$b;->a:Lorg/a/b/a$b;

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    goto :goto_0
.end method

.method public a(Lorg/a/e/b;)Lorg/a/e/b;
    .locals 2

    .prologue
    .line 195
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, Lorg/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, Lorg/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    invoke-interface {p1, v0, v1}, Lorg/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 200
    iget-object v1, p0, Lorg/a/b/b;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 201
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lorg/a/f/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-object p1
.end method

.method public a(Lorg/a/e/a;Lorg/a/e/i;)Lorg/a/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, Lorg/a/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "Connection"

    const-string v1, "Connection"

    invoke-interface {p1, v1}, Lorg/a/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/a/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "Switching Protocols"

    invoke-interface {p2, v0}, Lorg/a/e/i;->a(Ljava/lang/String;)V

    .line 211
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lorg/a/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/a/c/d;

    const-string v1, "missing Sec-WebSocket-Key"

    invoke-direct {v0, v1}, Lorg/a/c/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lorg/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/a/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object p2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    .line 392
    return-void
.end method

.method public b()Lorg/a/b/a$a;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lorg/a/b/a$a;->c:Lorg/a/b/a$a;

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/e;,
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 253
    iget-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 257
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 259
    iget-object v2, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 261
    if-le v2, v0, :cond_0

    .line 263
    iget-object v1, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    iget-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/a/b/b;->e(Ljava/nio/ByteBuffer;)Lorg/a/d/d;

    move-result-object v0

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/a/b/b$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 291
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/a/b/b;->e(Ljava/nio/ByteBuffer;)Lorg/a/d/d;

    move-result-object v0

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/a/b/b$a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 296
    invoke-virtual {v0}, Lorg/a/b/b$a;->a()I

    move-result v0

    .line 297
    invoke-virtual {p0, v0}, Lorg/a/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    .line 298
    iget-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    move-object v0, v1

    .line 302
    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 276
    iget-object v1, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 277
    invoke-virtual {v0}, Lorg/a/b/b$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/a/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 278
    sget-boolean v1, Lorg/a/b/b;->f:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :cond_3
    iget-object v1, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 280
    iget-object v1, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 281
    iput-object v0, p0, Lorg/a/b/b;->g:Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {p0, p1}, Lorg/a/b/b;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Lorg/a/b/a;
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lorg/a/b/b;

    invoke-direct {v0}, Lorg/a/b/b;-><init>()V

    return-object v0
.end method

.method public e(Ljava/nio/ByteBuffer;)Lorg/a/d/d;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b/b$a;,
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 308
    if-ge v7, v5, :cond_0

    .line 309
    new-instance v0, Lorg/a/b/b$a;

    invoke-direct {v0, p0, v5}, Lorg/a/b/b$a;-><init>(Lorg/a/b/b;I)V

    throw v0

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 311
    shr-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    .line 312
    :goto_0
    and-int/lit8 v0, v8, 0x7f

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 313
    if-eqz v0, :cond_2

    .line 314
    new-instance v1, Lorg/a/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad rsv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/a/c/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v6, v2

    .line 311
    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 316
    and-int/lit8 v0, v4, -0x80

    if-eqz v0, :cond_4

    move v0, v1

    .line 317
    :goto_1
    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    .line 318
    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    invoke-direct {p0, v8}, Lorg/a/b/b;->a(B)Lorg/a/d/d$a;

    move-result-object v8

    .line 320
    if-nez v6, :cond_5

    .line 321
    sget-object v9, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    if-eq v8, v9, :cond_3

    sget-object v9, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    if-eq v8, v9, :cond_3

    sget-object v9, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    if-ne v8, v9, :cond_5

    .line 322
    :cond_3
    new-instance v0, Lorg/a/c/c;

    const-string v1, "control frames may no be fragmented"

    invoke-direct {v0, v1}, Lorg/a/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 316
    goto :goto_1

    .line 326
    :cond_5
    if-ltz v4, :cond_6

    const/16 v9, 0x7d

    if-gt v4, v9, :cond_6

    .line 357
    :goto_2
    if-eqz v0, :cond_e

    move v1, v3

    :goto_3
    add-int/2addr v1, v5

    .line 359
    add-int/2addr v1, v4

    .line 361
    if-ge v7, v1, :cond_f

    .line 362
    new-instance v0, Lorg/a/b/b$a;

    invoke-direct {v0, p0, v1}, Lorg/a/b/b$a;-><init>(Lorg/a/b/b;I)V

    throw v0

    .line 328
    :cond_6
    sget-object v9, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    if-eq v8, v9, :cond_7

    sget-object v9, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    if-eq v8, v9, :cond_7

    sget-object v9, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    if-ne v8, v9, :cond_8

    .line 329
    :cond_7
    new-instance v0, Lorg/a/c/c;

    const-string v1, "more than 125 octets"

    invoke-direct {v0, v1}, Lorg/a/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_8
    const/16 v9, 0x7e

    if-ne v4, v9, :cond_a

    .line 333
    if-ge v7, v3, :cond_9

    .line 334
    new-instance v0, Lorg/a/b/b$a;

    invoke-direct {v0, p0, v3}, Lorg/a/b/b$a;-><init>(Lorg/a/b/b;I)V

    throw v0

    .line 335
    :cond_9
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v4, v1

    .line 337
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, v4, v5

    .line 338
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move v4, v1

    move v5, v3

    .line 339
    goto :goto_2

    .line 340
    :cond_a
    const/16 v4, 0xa

    .line 341
    if-ge v7, v4, :cond_b

    .line 342
    new-instance v0, Lorg/a/b/b$a;

    invoke-direct {v0, p0, v4}, Lorg/a/b/b$a;-><init>(Lorg/a/b/b;I)V

    throw v0

    .line 343
    :cond_b
    new-array v5, v10, [B

    move v1, v2

    .line 344
    :goto_4
    if-ge v1, v10, :cond_c

    .line 345
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v5, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 347
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 348
    const-wide/32 v12, 0x7fffffff

    cmp-long v1, v10, v12

    if-lez v1, :cond_d

    .line 349
    new-instance v0, Lorg/a/c/e;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lorg/a/c/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_d
    long-to-int v1, v10

    move v5, v4

    move v4, v1

    goto :goto_2

    :cond_e
    move v1, v2

    .line 357
    goto :goto_3

    .line 364
    :cond_f
    invoke-virtual {p0, v4}, Lorg/a/b/b;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 365
    if-eqz v0, :cond_10

    .line 366
    new-array v0, v3, [B

    .line 367
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 368
    :goto_5
    if-ge v2, v4, :cond_11

    .line 369
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v5, v2, 0x4

    aget-byte v5, v0, v5

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 372
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 373
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    :cond_11
    sget-object v0, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    if-ne v8, v0, :cond_12

    .line 378
    new-instance v0, Lorg/a/d/b;

    invoke-direct {v0}, Lorg/a/d/b;-><init>()V

    .line 384
    :goto_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 385
    invoke-interface {v0, v1}, Lorg/a/d/c;->a(Ljava/nio/ByteBuffer;)V

    .line 386
    return-object v0

    .line 380
    :cond_12
    new-instance v0, Lorg/a/d/e;

    invoke-direct {v0}, Lorg/a/d/e;-><init>()V

    .line 381
    invoke-interface {v0, v6}, Lorg/a/d/c;->a(Z)V

    .line 382
    invoke-interface {v0, v8}, Lorg/a/d/c;->a(Lorg/a/d/d$a;)V

    goto :goto_6
.end method
