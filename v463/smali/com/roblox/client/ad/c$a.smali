.class Lcom/roblox/client/ad/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/ad/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/roblox/client/ad/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/ad/c;-><init>(Lcom/roblox/client/ad/c$1;)V

    sput-object v0, Lcom/roblox/client/ad/c$a;->a:Lcom/roblox/client/ad/c;

    return-void
.end method
