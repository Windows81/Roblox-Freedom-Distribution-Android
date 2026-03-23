.class Lcom/roblox/client/signup/multiscreen/b/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/abtesting/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/z;->c(Ljava/lang/String;Lcom/roblox/platform/http/returntypes/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/platform/http/returntypes/b;

.field final synthetic b:J

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/z;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/platform/http/returntypes/b;J)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->a:Lcom/roblox/platform/http/returntypes/b;

    iput-wide p3, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->a:Lcom/roblox/platform/http/returntypes/b;

    iget v1, v1, Lcom/roblox/platform/http/returntypes/b;->a:I

    iget-wide v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$4;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;IJ)V

    return-void
.end method
