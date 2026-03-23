.class Lmicrosoft/aspnet/signalr/client/KeepAliveData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCheckInterval:J

.field private mKeepAliveWarnAt:D

.field private mLastKeepAlive:J

.field private mTimeout:J

.field private mTimeoutWarning:J


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    iput-wide v0, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mKeepAliveWarnAt:D

    .line 48
    invoke-virtual {p0, p1, p2}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->setTimeout(J)V

    .line 49
    long-to-double v0, p1

    iget-wide v2, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mKeepAliveWarnAt:D

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->setTimeoutWarning(J)V

    .line 50
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->getTimeoutWarning()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->setCheckInterval(J)V

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->setLastKeepAlive(J)V

    .line 52
    return-void
.end method


# virtual methods
.method public getCheckInterval()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mCheckInterval:J

    return-wide v0
.end method

.method public getLastKeepAlive()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mLastKeepAlive:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mTimeout:J

    return-wide v0
.end method

.method public getTimeoutWarning()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mTimeoutWarning:J

    return-wide v0
.end method

.method public setCheckInterval(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mCheckInterval:J

    .line 108
    return-void
.end method

.method public setLastKeepAlive(J)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mLastKeepAlive:J

    .line 66
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mTimeout:J

    .line 80
    return-void
.end method

.method public setTimeoutWarning(J)V
    .locals 1

    .prologue
    .line 93
    iput-wide p1, p0, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->mTimeoutWarning:J

    .line 94
    return-void
.end method
