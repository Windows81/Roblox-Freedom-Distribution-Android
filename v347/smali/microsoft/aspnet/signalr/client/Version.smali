.class public Lmicrosoft/aspnet/signalr/client/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mParts:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    array-length v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    .line 27
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 28
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    instance-of v0, p1, Lmicrosoft/aspnet/signalr/client/Version;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lmicrosoft/aspnet/signalr/client/Version;

    .line 57
    iget-object v0, p1, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    array-length v0, v0

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 61
    :goto_1
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 62
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget v2, v2, v0

    iget-object v3, p1, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPart(I)I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget v2, v2, v0

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Version;->mParts:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
