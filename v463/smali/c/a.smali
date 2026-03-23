.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lc/t;

.field final b:Lc/p;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lc/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/y;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lc/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILc/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc/g;Lc/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lc/p;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lc/g;",
            "Lc/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lc/y;",
            ">;",
            "Ljava/util/List<",
            "Lc/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lc/t$a;

    invoke-direct {v0}, Lc/t$a;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Lc/t$a;->a(Ljava/lang/String;)Lc/t$a;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lc/t$a;->b(Ljava/lang/String;)Lc/t$a;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lc/t$a;->a(I)Lc/t$a;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lc/t$a;->c()Lc/t;

    move-result-object p1

    iput-object p1, p0, Lc/a;->a:Lc/t;

    if-eqz p3, :cond_6

    .line 61
    iput-object p3, p0, Lc/a;->b:Lc/p;

    if-eqz p4, :cond_5

    .line 64
    iput-object p4, p0, Lc/a;->c:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    .line 69
    iput-object p8, p0, Lc/a;->d:Lc/b;

    if-eqz p10, :cond_3

    .line 72
    invoke-static {p10}, Lc/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/a;->e:Ljava/util/List;

    if-eqz p11, :cond_2

    .line 75
    invoke-static {p11}, Lc/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/a;->f:Ljava/util/List;

    if-eqz p12, :cond_1

    .line 78
    iput-object p12, p0, Lc/a;->g:Ljava/net/ProxySelector;

    .line 80
    iput-object p9, p0, Lc/a;->h:Ljava/net/Proxy;

    .line 81
    iput-object p5, p0, Lc/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    iput-object p6, p0, Lc/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 83
    iput-object p7, p0, Lc/a;->k:Lc/g;

    return-void

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lc/t;
    .locals 1

    .line 91
    iget-object v0, p0, Lc/a;->a:Lc/t;

    return-object v0
.end method

.method public b()Lc/p;
    .locals 1

    .line 96
    iget-object v0, p0, Lc/a;->b:Lc/p;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .locals 1

    .line 101
    iget-object v0, p0, Lc/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Lc/b;
    .locals 1

    .line 106
    iget-object v0, p0, Lc/a;->d:Lc/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/y;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lc/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 153
    instance-of v0, p1, Lc/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lc/a;

    .line 155
    iget-object v0, p0, Lc/a;->a:Lc/t;

    iget-object v2, p1, Lc/a;->a:Lc/t;

    invoke-virtual {v0, v2}, Lc/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->b:Lc/p;

    iget-object v2, p1, Lc/a;->b:Lc/p;

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->d:Lc/b;

    iget-object v2, p1, Lc/a;->d:Lc/b;

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->e:Ljava/util/List;

    iget-object v2, p1, Lc/a;->e:Ljava/util/List;

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->f:Ljava/util/List;

    iget-object v2, p1, Lc/a;->f:Ljava/util/List;

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lc/a;->g:Ljava/net/ProxySelector;

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lc/a;->h:Ljava/net/Proxy;

    .line 161
    invoke-static {v0, v2}, Lc/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lc/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 162
    invoke-static {v0, v2}, Lc/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lc/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    invoke-static {v0, v2}, Lc/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a;->k:Lc/g;

    iget-object p1, p1, Lc/a;->k:Lc/g;

    .line 164
    invoke-static {v0, p1}, Lc/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/k;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lc/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .locals 1

    .line 126
    iget-object v0, p0, Lc/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .locals 1

    .line 134
    iget-object v0, p0, Lc/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 171
    iget-object v0, p0, Lc/a;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-object v0, p0, Lc/a;->b:Lc/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget-object v0, p0, Lc/a;->d:Lc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget-object v0, p0, Lc/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget-object v0, p0, Lc/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget-object v0, p0, Lc/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget-object v0, p0, Lc/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-object v0, p0, Lc/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget-object v0, p0, Lc/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget-object v0, p0, Lc/a;->k:Lc/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 139
    iget-object v0, p0, Lc/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 144
    iget-object v0, p0, Lc/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Lc/g;
    .locals 1

    .line 149
    iget-object v0, p0, Lc/a;->k:Lc/g;

    return-object v0
.end method
