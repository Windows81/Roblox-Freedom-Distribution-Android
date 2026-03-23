.class public Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    return-void
.end method
