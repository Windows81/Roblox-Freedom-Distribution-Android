.class public Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/NoObfuscate;


# instance fields
.field public final imageUrl:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final targetId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->targetId:J

    .line 17
    iput-object p3, p0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->state:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->imageUrl:Ljava/lang/String;

    return-void
.end method
