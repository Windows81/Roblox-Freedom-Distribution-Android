.class public Lmicrosoft/aspnet/signalr/client/hubs/HubException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x52b1564c210d583cL


# instance fields
.field private mErrorData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubException;->mErrorData:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getErrorData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubException;->mErrorData:Ljava/lang/Object;

    return-object v0
.end method
