.class public Lio/chirp/connect/models/ChirpError;
.super Ljava/lang/Object;


# instance fields
.field private code:Lio/chirp/connect/models/ChirpErrorCode;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/chirp/connect/models/ChirpError;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/chirp/connect/models/ChirpError;->findErrorCode(I)Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    return-void
.end method

.method public constructor <init>(Lchirpconnect/SDKError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lchirpconnect/SDKError;->error()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/connect/models/ChirpError;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p1

    invoke-direct {p0, p1}, Lio/chirp/connect/models/ChirpError;->findErrorCode(I)Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    return-void
.end method

.method public constructor <init>(Lio/chirp/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/chirp/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/connect/models/ChirpError;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lio/chirp/a/e;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lio/chirp/connect/models/ChirpError;->findErrorCode(I)Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    return-void
.end method

.method public constructor <init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/chirp/connect/models/ChirpError;->message:Ljava/lang/String;

    iput-object p1, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    return-void
.end method

.method private findErrorCode(I)Lio/chirp/connect/models/ChirpErrorCode;
    .locals 5

    invoke-static {}, Lio/chirp/connect/models/ChirpErrorCode;->values()[Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/chirp/connect/models/ChirpErrorCode;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_UNKNOWN_ERROR:Lio/chirp/connect/models/ChirpErrorCode;

    return-object p1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpErrorCode;->getCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()Lio/chirp/connect/models/ChirpErrorCode;
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/models/ChirpError;->code:Lio/chirp/connect/models/ChirpErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/models/ChirpError;->message:Ljava/lang/String;

    return-object v0
.end method
