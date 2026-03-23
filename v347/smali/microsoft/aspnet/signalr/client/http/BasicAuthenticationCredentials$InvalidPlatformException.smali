.class public Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$InvalidPlatformException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidPlatformException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b6bfe1c331784d4L


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials$InvalidPlatformException;->this$0:Lmicrosoft/aspnet/signalr/client/http/BasicAuthenticationCredentials;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
