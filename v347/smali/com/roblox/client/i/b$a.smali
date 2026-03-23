.class Lcom/roblox/client/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/roblox/client/i/b;

    invoke-direct {v0}, Lcom/roblox/client/i/b;-><init>()V

    sput-object v0, Lcom/roblox/client/i/b$a;->a:Lcom/roblox/client/i/b;

    return-void
.end method
