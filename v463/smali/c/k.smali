.class public final Lc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/k$a;
    }
.end annotation


# static fields
.field public static final a:Lc/k;

.field public static final b:Lc/k;

.field public static final c:Lc/k;

.field private static final d:[Lc/h;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xd

    new-array v0, v0, [Lc/h;

    .line 44
    sget-object v1, Lc/h;->aK:Lc/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lc/h;->aO:Lc/h;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lc/h;->W:Lc/h;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lc/h;->am:Lc/h;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lc/h;->al:Lc/h;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->av:Lc/h;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->aw:Lc/h;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->F:Lc/h;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->J:Lc/h;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->U:Lc/h;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->D:Lc/h;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->H:Lc/h;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lc/h;->h:Lc/h;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sput-object v0, Lc/k;->d:[Lc/h;

    .line 65
    new-instance v0, Lc/k$a;

    invoke-direct {v0, v3}, Lc/k$a;-><init>(Z)V

    sget-object v1, Lc/k;->d:[Lc/h;

    .line 66
    invoke-virtual {v0, v1}, Lc/k$a;->a([Lc/h;)Lc/k$a;

    move-result-object v0

    new-array v1, v5, [Lc/af;

    sget-object v5, Lc/af;->a:Lc/af;

    aput-object v5, v1, v2

    sget-object v5, Lc/af;->b:Lc/af;

    aput-object v5, v1, v3

    sget-object v5, Lc/af;->c:Lc/af;

    aput-object v5, v1, v4

    .line 67
    invoke-virtual {v0, v1}, Lc/k$a;->a([Lc/af;)Lc/k$a;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lc/k$a;->a(Z)Lc/k$a;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lc/k$a;->a()Lc/k;

    move-result-object v0

    sput-object v0, Lc/k;->a:Lc/k;

    .line 72
    new-instance v1, Lc/k$a;

    invoke-direct {v1, v0}, Lc/k$a;-><init>(Lc/k;)V

    new-array v0, v3, [Lc/af;

    sget-object v4, Lc/af;->c:Lc/af;

    aput-object v4, v0, v2

    .line 73
    invoke-virtual {v1, v0}, Lc/k$a;->a([Lc/af;)Lc/k$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Lc/k$a;->a(Z)Lc/k$a;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lc/k$a;->a()Lc/k;

    move-result-object v0

    sput-object v0, Lc/k;->b:Lc/k;

    .line 78
    new-instance v0, Lc/k$a;

    invoke-direct {v0, v2}, Lc/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lc/k$a;->a()Lc/k;

    move-result-object v0

    sput-object v0, Lc/k;->c:Lc/k;

    return-void
.end method

.method private constructor <init>(Lc/k$a;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lc/k$a;->a(Lc/k$a;)Z

    move-result v0

    iput-boolean v0, p0, Lc/k;->e:Z

    .line 87
    invoke-static {p1}, Lc/k$a;->b(Lc/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/k;->g:[Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lc/k$a;->c(Lc/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/k;->h:[Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lc/k$a;->d(Lc/k$a;)Z

    move-result p1

    iput-boolean p1, p0, Lc/k;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lc/k$a;Lc/k$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lc/k;-><init>(Lc/k$a;)V

    return-void
.end method

.method static synthetic a(Lc/k;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lc/k;->e:Z

    return p0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 199
    array-length v1, p0

    if-eqz v1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 203
    invoke-static {p1, v3}, Lc/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lc/k;
    .locals 4

    .line 145
    iget-object v0, p0, Lc/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lc/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    iget-object v1, p0, Lc/k;->h:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-class v2, Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lc/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string p2, "TLS_FALLBACK_SCSV"

    invoke-static {p1, p2}, Lc/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 155
    invoke-static {v0, p2}, Lc/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2
    new-instance p1, Lc/k$a;

    invoke-direct {p1, p0}, Lc/k$a;-><init>(Lc/k;)V

    .line 159
    invoke-virtual {p1, v0}, Lc/k$a;->a([Ljava/lang/String;)Lc/k$a;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v1}, Lc/k$a;->b([Ljava/lang/String;)Lc/k$a;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lc/k$a;->a()Lc/k;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lc/k;)[Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lc/k;->g:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/k;)[Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lc/k;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lc/k;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lc/k;->f:Z

    return p0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2}, Lc/k;->b(Ljavax/net/ssl/SSLSocket;Z)Lc/k;

    move-result-object p2

    .line 132
    iget-object v0, p2, Lc/k;->h:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object p2, p2, Lc/k;->g:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lc/k;->e:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 176
    iget-boolean v0, p0, Lc/k;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lc/k;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 185
    :cond_1
    iget-object v0, p0, Lc/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/h;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lc/k;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lc/h;

    const/4 v1, 0x0

    .line 104
    :goto_0
    iget-object v2, p0, Lc/k;->g:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 105
    aget-object v2, v2, v1

    invoke-static {v2}, Lc/h;->a(Ljava/lang/String;)Lc/h;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v0}, Lc/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/af;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lc/k;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lc/af;

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lc/k;->h:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 119
    aget-object v2, v2, v1

    invoke-static {v2}, Lc/af;->a(Ljava/lang/String;)Lc/af;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v0}, Lc/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lc/k;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 211
    instance-of v0, p1, Lc/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 214
    :cond_1
    check-cast p1, Lc/k;

    .line 215
    iget-boolean v2, p0, Lc/k;->e:Z

    iget-boolean v3, p1, Lc/k;->e:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 218
    iget-object v2, p0, Lc/k;->g:[Ljava/lang/String;

    iget-object v3, p1, Lc/k;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 219
    :cond_3
    iget-object v2, p0, Lc/k;->h:[Ljava/lang/String;

    iget-object v3, p1, Lc/k;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 220
    :cond_4
    iget-boolean v2, p0, Lc/k;->f:Z

    iget-boolean p1, p1, Lc/k;->f:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 228
    iget-boolean v0, p0, Lc/k;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 229
    iget-object v1, p0, Lc/k;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v1, p0, Lc/k;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-boolean v1, p0, Lc/k;->f:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 237
    iget-boolean v0, p0, Lc/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lc/k;->g:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 242
    :goto_0
    iget-object v2, p0, Lc/k;->h:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lc/k;->f:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
