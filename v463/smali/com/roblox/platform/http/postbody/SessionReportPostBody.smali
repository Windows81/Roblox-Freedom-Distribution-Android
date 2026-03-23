.class public Lcom/roblox/platform/http/postbody/SessionReportPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final eventType:Ljava/lang/String;

.field public final placeId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/SessionReportPostBody;->eventType:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/roblox/platform/http/postbody/SessionReportPostBody;->placeId:J

    return-void
.end method
