.class public Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Credentials;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$InvalidPlatformException;,
        Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;
    }
.end annotation


# instance fields
.field private mEncoder:Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->initialize(Ljava/lang/String;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;)V

    .line 32
    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mUsername:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mPassword:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mEncoder:Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;

    .line 50
    if-nez p3, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mEncoder:Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$Base64Encoder;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mPassword:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;->mUsername:Ljava/lang/String;

    .line 70
    return-void
.end method
