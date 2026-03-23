.class public Lcom/roblox/platform/http/returntypes/TokenResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final code:Ljava/lang/String;

.field public final expires:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/roblox/platform/http/returntypes/TokenResponseBody;->expires:J

    .line 11
    iput-object p3, p0, Lcom/roblox/platform/http/returntypes/TokenResponseBody;->code:Ljava/lang/String;

    return-void
.end method
