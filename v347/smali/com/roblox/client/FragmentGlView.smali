.class public Lcom/roblox/client/FragmentGlView;
.super Lcom/roblox/client/m;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/roblox/engine/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/FragmentGlView$c;,
        Lcom/roblox/client/FragmentGlView$b;,
        Lcom/roblox/client/FragmentGlView$a;
    }
.end annotation


# static fields
.field private static final SURFACE_CREATED:I = 0x2

.field private static final SURFACE_DESTROYED:I = 0x4

.field private static final SURFACE_INVALID:I = -0x1

.field private static final SURFACE_NOT_READY:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "rbx.glview"

.field private static hasDoneGameGlobalInit:Z

.field private static mSingleton:Lcom/roblox/client/FragmentGlView;


# instance fields
.field private gameParams:Lcom/roblox/client/FragmentGlView$a;

.field private isRenderingStopped:Z

.field private mContentMain:Landroid/view/View;

.field private mCurrentTextBox:J

.field protected mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

.field protected mGlobalLayoutTool:Lcom/roblox/engine/components/a;

.field private mGooglePurchaseListener:Lcom/roblox/client/purchase/c;

.field public mGoogleStoreMgr:Lcom/roblox/client/purchase/google/b;

.field private mGraphicsHaveStarted:Z

.field private mInputListener:Lcom/roblox/engine/b;

.field private mIs3DApp:Z

.field protected mIsAppReady:Z

.field protected mIsGameLoaded:Z

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPlayerPtr:J

.field private mProductId:Ljava/lang/String;

.field private mRetryView:Landroid/view/View;

.field private mScreenDpiTool:Lcom/roblox/engine/e;

.field private mSurfaceCreated:Z

.field private mSurfaceHeight:I

.field private mSurfaceState:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mTabWidget:Landroid/view/View;

.field protected mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/FragmentGlView;->hasDoneGameGlobalInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 98
    new-instance v0, Lcom/roblox/client/FragmentGlView$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/FragmentGlView$a;-><init>(Lcom/roblox/client/FragmentGlView;)V

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    .line 107
    iput-object v2, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 115
    iput-wide v4, p0, Lcom/roblox/client/FragmentGlView;->mCurrentTextBox:J

    .line 117
    iput-wide v4, p0, Lcom/roblox/client/FragmentGlView;->mPlayerPtr:J

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mProductId:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIs3DApp:Z

    .line 125
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    .line 126
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceCreated:Z

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    .line 137
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->isRenderingStopped:Z

    .line 144
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->mIsGameLoaded:Z

    .line 145
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->mIsAppReady:Z

    .line 153
    new-instance v0, Lcom/roblox/engine/e;

    invoke-direct {v0}, Lcom/roblox/engine/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mScreenDpiTool:Lcom/roblox/engine/e;

    .line 157
    new-instance v0, Lcom/roblox/client/FragmentGlView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/FragmentGlView$1;-><init>(Lcom/roblox/client/FragmentGlView;)V

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGooglePurchaseListener:Lcom/roblox/client/purchase/c;

    .line 212
    iput-object v2, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    .line 219
    sput-object p0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    .line 221
    new-instance v0, Lcom/roblox/client/jni/a;

    invoke-direct {v0}, Lcom/roblox/client/jni/a;-><init>()V

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setImplementation(Lcom/roblox/engine/jni/b;)V

    .line 224
    invoke-static {}, Lcom/roblox/client/b;->ba()Z

    move-result v0

    invoke-static {v0}, Lcom/roblox/engine/a;->a(Z)V

    .line 225
    invoke-static {}, Lcom/roblox/client/b;->bz()Z

    move-result v0

    invoke-static {v0}, Lcom/roblox/engine/a;->b(Z)V

    .line 226
    invoke-static {}, Lcom/roblox/client/b;->bA()I

    move-result v0

    invoke-static {v0}, Lcom/roblox/engine/a;->a(I)V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/FragmentGlView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/roblox/client/FragmentGlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mRetryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/roblox/client/FragmentGlView;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->getNativeClientSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/roblox/client/FragmentGlView;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/FragmentGlView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentGlView;->reportClientSettingEvents(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/roblox/client/FragmentGlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mTabWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/roblox/client/FragmentGlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mContentMain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/roblox/client/FragmentGlView;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    return v0
.end method

.method static synthetic access$800(Lcom/roblox/client/FragmentGlView;)J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/roblox/client/FragmentGlView;->mCurrentTextBox:J

    return-wide v0
.end method

.method static synthetic access$900()Lcom/roblox/client/FragmentGlView;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    return-object v0
.end method

.method private getCorrespondingErrorStringResourceId(I)I
    .locals 3

    .prologue
    .line 1217
    packed-switch p1, :pswitch_data_0

    .line 1226
    :pswitch_0
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Game failed to start) Unexpected errorId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const v0, 0x7f0e0196

    :goto_0
    return v0

    .line 1218
    :pswitch_1
    const v0, 0x7f0e018f

    goto :goto_0

    .line 1219
    :pswitch_2
    const v0, 0x7f0e0190

    goto :goto_0

    .line 1220
    :pswitch_3
    const v0, 0x7f0e0191

    goto :goto_0

    .line 1221
    :pswitch_4
    const v0, 0x7f0e0192

    goto :goto_0

    .line 1222
    :pswitch_5
    const v0, 0x7f0e0197

    goto :goto_0

    .line 1223
    :pswitch_6
    const v0, 0x7f0e0195

    goto :goto_0

    .line 1224
    :pswitch_7
    const v0, 0x7f0e0194

    goto :goto_0

    .line 1217
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getIso2CountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1083
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    .line 1084
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1086
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1090
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getNativeClientSettings()V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Lcom/roblox/client/FragmentGlView$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/FragmentGlView$6;-><init>(Lcom/roblox/client/FragmentGlView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 606
    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGlView$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 607
    return-void
.end method

.method public static getSingleton()Lcom/roblox/client/FragmentGlView;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    return-object v0
.end method

.method private hasValidSurfaceView()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inGamePurchaseFinished(ZJLjava/lang/String;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1125
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-Game purchase finished: success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    iget v0, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1127
    :cond_0
    const-string v0, "rbx.purchaseflow"

    const-string v1, "FragmentGlView.inGamePurchaseFinished: Singleton is null or surface is not created."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :goto_0
    return-void

    .line 1132
    :cond_1
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    iget-wide v0, v0, Lcom/roblox/client/FragmentGlView;->mPlayerPtr:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 1133
    const-string v0, "rbx.purchaseflow"

    const-string v1, "FragmentGlView.inGamePurchaseFinished: playerPtr == 0."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :cond_2
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native call. Success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeInGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 1141
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    const-string v1, ""

    iput-object v1, v0, Lcom/roblox/client/FragmentGlView;->mProductId:Ljava/lang/String;

    .line 1142
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    iput-wide v4, v0, Lcom/roblox/client/FragmentGlView;->mPlayerPtr:J

    goto :goto_0
.end method

.method public static inGamePurchaseFinishedFromAmazonPurchasingActivity(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1146
    const-string v0, "rbx.amazon.purchaseflow"

    const-string v1, "inGamePurchaseFinishedFromAmazonPurchasingActivity called"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    sget-object v0, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    if-nez v0, :cond_1

    .line 1149
    const-string v0, "rbx.amazon.purchaseflow"

    const-string v1, "inGamePurchaseFinishedFromAmazonPurchasingActivity. mSingleton == null."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string v0, "productId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    const-string v0, "purchaseResult"

    .line 1155
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/purchase/d;

    .line 1156
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1158
    sget-object v3, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    iget-wide v4, v3, Lcom/roblox/client/FragmentGlView;->mPlayerPtr:J

    invoke-static {v2, v4, v5, v1}, Lcom/roblox/client/FragmentGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 1160
    sget-object v1, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_0

    .line 1165
    sget-object v2, Lcom/roblox/client/FragmentGlView;->mSingleton:Lcom/roblox/client/FragmentGlView;

    iget-object v2, v2, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/roblox/client/FragmentGlView$3;

    invoke-direct {v3, v0, v1}, Lcom/roblox/client/FragmentGlView$3;-><init>(Lcom/roblox/client/purchase/d;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initGlEditTextView()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const v1, 0x10000004

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setImeOptions(I)V

    .line 649
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setSingleLine(Z)V

    .line 650
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 652
    new-instance v0, Lcom/roblox/engine/components/a$a;

    invoke-direct {v0}, Lcom/roblox/engine/components/a$a;-><init>()V

    .line 653
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/roblox/engine/components/a$a;->a:I

    .line 654
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/roblox/engine/components/a$a;->b:I

    .line 656
    new-instance v1, Lcom/roblox/client/FragmentGlView$7;

    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/roblox/client/FragmentGlView$7;-><init>(Lcom/roblox/client/FragmentGlView;Landroid/content/Context;Lcom/roblox/engine/components/a$a;)V

    iput-object v1, p0, Lcom/roblox/client/FragmentGlView;->mGlobalLayoutTool:Lcom/roblox/engine/components/a;

    .line 669
    new-instance v0, Lcom/roblox/client/FragmentGlView$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/FragmentGlView$8;-><init>(Lcom/roblox/client/FragmentGlView;)V

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 681
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 683
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    new-instance v1, Lcom/roblox/client/FragmentGlView$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGlView$9;-><init>(Lcom/roblox/client/FragmentGlView;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 707
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    new-instance v1, Lcom/roblox/client/FragmentGlView$10;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGlView$10;-><init>(Lcom/roblox/client/FragmentGlView;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 725
    return-void
.end method

.method private initSurfaceView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 800
    const-string v0, "rbx.glview"

    const-string v1, "initSurfaceView: ..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const v0, 0x7f0801bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 803
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 804
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 806
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 807
    return-void
.end method

.method private reportClientSettingEvents(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 614
    const-string v2, "EngineInit"

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget v0, v0, Lcom/roblox/client/FragmentGlView$a;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "Settings3DApp"

    .line 616
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OK"

    .line 614
    :goto_1
    invoke-static {v2, v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void

    .line 614
    :cond_0
    const-string v0, "SettingsGame"

    goto :goto_0

    .line 616
    :cond_1
    const-string v1, "Error"

    goto :goto_1
.end method

.method private setupGameParams()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_0

    .line 474
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "vrEnabled"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/roblox/client/FragmentGlView$a;->h:Z

    .line 476
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "userId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/roblox/client/FragmentGlView$a;->b:J

    .line 477
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "joinRequestType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/roblox/client/FragmentGlView$a;->a:I

    .line 479
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "appStarterPlace"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/roblox/client/FragmentGlView$a;->c:Ljava/lang/String;

    .line 480
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "appStarterScript"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/roblox/client/FragmentGlView$a;->d:Ljava/lang/String;

    .line 482
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "placeId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/roblox/client/FragmentGlView$a;->e:J

    .line 483
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "accessCode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/roblox/client/FragmentGlView$a;->f:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    const-string v3, "gameId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/roblox/client/FragmentGlView$a;->g:Ljava/lang/String;

    .line 486
    const-string v2, "is3DApp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/roblox/client/FragmentGlView;->mIs3DApp:Z

    .line 489
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private showGameErrorDialog(I)V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/FragmentGlView$4;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/FragmentGlView$4;-><init>(Lcom/roblox/client/FragmentGlView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1208
    return-void
.end method

.method private startApp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 27

    .prologue
    .line 735
    const-string v2, "rbx.glview"

    const-string v3, "startApp"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 739
    new-instance v2, Lcom/roblox/engine/f;

    .line 743
    invoke-static {}, Lcom/roblox/client/b/c;->a()Lcom/roblox/engine/f$b;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/roblox/engine/f;-><init>(Lcom/roblox/engine/f$b;)V

    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/roblox/engine/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 750
    invoke-static {}, Lcom/roblox/client/d;->a()Ljava/lang/String;

    move-result-object v15

    .line 751
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v16

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getIso2CountryCode()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getCurrentScreenDensity()F

    move-result v20

    .line 755
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->g()Z

    move-result v21

    .line 756
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v22

    .line 757
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->k()I

    move-result v23

    .line 758
    invoke-static {}, Lcom/roblox/client/n/a;->c()Z

    move-result v24

    .line 759
    invoke-static {}, Lcom/roblox/client/n/a;->d()Z

    move-result v25

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .line 739
    invoke-static/range {v3 .. v25}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeStartApp(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFZLjava/lang/String;IZZ)V

    .line 760
    return-void
.end method

.method private startGame(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 25

    .prologue
    .line 763
    const-string v2, "rbx.glview"

    const-string v3, "startGame"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 767
    new-instance v2, Lcom/roblox/engine/f;

    .line 773
    invoke-static {}, Lcom/roblox/client/b/c;->a()Lcom/roblox/engine/f$b;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/roblox/engine/f;-><init>(Lcom/roblox/engine/f$b;)V

    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/roblox/engine/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 780
    invoke-static {}, Lcom/roblox/client/d;->a()Ljava/lang/String;

    move-result-object v18

    .line 781
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v19

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getIso2CountryCode()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v21, 0x0

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/FragmentGlView;->getCurrentScreenDensity()F

    move-result v23

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 767
    invoke-static/range {v3 .. v23}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeStartGame(Landroid/view/Surface;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JF)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    if-eqz v2, :cond_0

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/roblox/client/FragmentGlView$b;->a(J)V

    .line 789
    :cond_0
    return-void
.end method

.method private updateSurfaceParams(II)V
    .locals 3

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getCurrentScreenDensity()F

    move-result v0

    .line 813
    int-to-float v1, p1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    .line 814
    int-to-float v1, p2

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    .line 822
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230NU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    .line 824
    const/16 v0, 0x258

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    .line 826
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 827
    const/16 v1, 0x500

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 828
    const/16 v1, 0x320

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 829
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 832
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentScreenDensity()F
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mScreenDpiTool:Lcom/roblox/engine/e;

    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method protected getEditTextView(Landroid/view/View;)Lcom/roblox/client/RbxKeyboard;
    .locals 2

    .prologue
    .line 571
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RbxKeyboard;

    .line 572
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setBackgroundColor(I)V

    .line 573
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setTextColor(I)V

    .line 574
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInputListener()Lcom/roblox/engine/b;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    return-object v0
.end method

.method protected getLoadingView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getShowKeyboardRunnable(ZLjava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 990
    new-instance v0, Lcom/roblox/client/FragmentGlView$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/roblox/client/FragmentGlView$11;-><init>(Lcom/roblox/client/FragmentGlView;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    .line 633
    .line 634
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 635
    if-lez v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 641
    :goto_0
    return v0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public handleGameExitedEvent(Z)V
    .locals 3

    .prologue
    .line 445
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGameExitedEvent: success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz p1, :cond_1

    const/16 v0, 0x66

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/FragmentGlView;->tryToFinishActivity(I)V

    .line 451
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/FragmentGlView$b;->b(Z)V

    .line 454
    :cond_0
    return-void

    .line 447
    :cond_1
    const/16 v0, 0x67

    goto :goto_0
.end method

.method public handleHideKeyboard()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1016
    const-string v0, "rbx.glview"

    const-string v1, "handleHideKeyboard: ..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1021
    :cond_0
    iput-wide v2, p0, Lcom/roblox/client/FragmentGlView;->mCurrentTextBox:J

    .line 1022
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 1024
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/FragmentGlView$12;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGlView$12;-><init>(Lcom/roblox/client/FragmentGlView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleShowKeyboard(JZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 977
    const-string v0, "rbx.glview"

    const-string v1, "handleShowKeyboard: ..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 982
    :cond_0
    iput-wide p1, p0, Lcom/roblox/client/FragmentGlView;->mCurrentTextBox:J

    .line 983
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 985
    invoke-virtual {p0, p3, p4}, Lcom/roblox/client/FragmentGlView;->getShowKeyboardRunnable(ZLjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected hideLoadingViewOnSettingsRetrieved()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method protected initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 553
    const v0, 0x7f080114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isAppReady()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIsAppReady:Z

    return v0
.end method

.method public isGameLoaded()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIsGameLoaded:Z

    return v0
.end method

.method public isSurfaceCreated()Z
    .locals 2

    .prologue
    .line 796
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onActivityCreated(Landroid/os/Bundle;)V

    .line 566
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mTabWidget:Landroid/view/View;

    .line 567
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mContentMain:Landroid/view/View;

    .line 568
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/m;->onActivityResult(IILandroid/content/Intent;)V

    .line 430
    return-void
.end method

.method public onAppReady(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIsAppReady:Z

    .line 873
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onAppReady() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {}, Lcom/roblox/client/b;->bR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 878
    instance-of v1, v0, Lcom/roblox/client/ActivityNativeMain;

    if-eqz v1, :cond_0

    .line 879
    check-cast v0, Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->n()Lcom/roblox/client/feature/l;

    move-result-object v0

    .line 880
    instance-of v1, v0, Lcom/roblox/client/feature/g;

    if-nez v1, :cond_0

    .line 881
    const-string v1, "rbx.glview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppReady() stopRendering Lua App because active feature is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/feature/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->stopRendering()V

    .line 886
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 243
    instance-of v0, p1, Lcom/roblox/client/FragmentGlView$b;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Lcom/roblox/client/FragmentGlView$b;

    iput-object p1, p0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    .line 246
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 251
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/FragmentGlView;->setRetainInstance(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 494
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfaceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->setupGameParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string v0, "rbx.glview"

    const-string v1, "Trying to create GLView with no valid arguments."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGoogleStoreMgr:Lcom/roblox/client/purchase/google/b;

    .line 505
    const v0, 0x7f0a0061

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 507
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->updateNativeSettings()V

    .line 509
    invoke-static {}, Lcom/roblox/client/b;->ab()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    iget v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 516
    const-string v1, "rbx.glview"

    const-string v2, "onCreateView: The game is being recreated. Keep the current surface state."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/FragmentGlView;->initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentGlView;->mLoadingView:Landroid/widget/FrameLayout;

    .line 523
    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentGlView;->mRetryView:Landroid/view/View;

    .line 524
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mRetryView:Landroid/view/View;

    const v2, 0x7f080170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/FragmentGlView$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/FragmentGlView$5;-><init>(Lcom/roblox/client/FragmentGlView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/roblox/client/FragmentGlView;->getEditTextView(Landroid/view/View;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 535
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->initGlEditTextView()V

    .line 536
    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentGlView;->initSurfaceView(Landroid/view/View;)V

    .line 538
    new-instance v1, Lcom/roblox/engine/b;

    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 541
    invoke-static {}, Lcom/roblox/client/b;->ak()Z

    move-result v4

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/roblox/engine/b;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/roblox/engine/b$a;Z)V

    iput-object v1, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    .line 542
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->getNativeClientSettings()V

    goto :goto_0

    .line 518
    :cond_2
    iput v3, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    goto :goto_1
.end method

.method public onDataModelNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1235
    const-string v2, "rbx.glview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataModelNotification() type:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " data:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Lcom/roblox/client/b;->bV()Z

    move-result v2

    .line 1239
    const-string v3, "VIEW_PROFILE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1241
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "PROFILE_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1242
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    const-string v3, "REPORT_ABUSE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1247
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "ABUSE_REPORT_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1251
    :cond_2
    const-string v3, "VIEW_GAME_DETAILS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "GAME_DETAILS_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1254
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1257
    :cond_3
    const-string v3, "SHOW_TAB_BAR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1259
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/r;

    invoke-direct {v1, v7}, Lcom/roblox/client/e/r;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1261
    :cond_4
    const-string v3, "HIDE_TAB_BAR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1263
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/r;

    invoke-direct {v2, v0}, Lcom/roblox/client/e/r;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1265
    :cond_5
    const-string v3, "UNREAD_COUNT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1269
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1274
    :goto_1
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/a;->b(I)V

    .line 1275
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/x;

    invoke-direct {v2, v0}, Lcom/roblox/client/e/x;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1277
    :cond_6
    const-string v0, "PRIVACY_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1279
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "SETTINGS_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1280
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getSettingsPrivacyPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1283
    :cond_7
    const-string v0, "BACK_BUTTON_NOT_CONSUMED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1285
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/d;

    invoke-direct {v1}, Lcom/roblox/client/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1287
    :cond_8
    const-string v0, "PURCHASE_ROBUX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1290
    new-instance v0, Lcom/roblox/client/j/d;

    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v1

    const-string v2, "tabAvatar"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/j/d;-><init>(Lcom/roblox/client/m;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/roblox/client/j/d;->a()V

    goto/16 :goto_0

    .line 1292
    :cond_9
    const-string v0, "VIEW_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1294
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->a()V

    goto/16 :goto_0

    .line 1296
    :cond_a
    const-string v0, "APP_READY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1298
    invoke-virtual {p0, p2}, Lcom/roblox/client/FragmentGlView;->onAppReady(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    :cond_b
    const-string v0, "CLOSE_MODAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    const-string v0, "VIEW_GAME_DETAILS_ANIMATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1305
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "ANIMATED_ASSET_DETAILS_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1306
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1307
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1309
    :cond_c
    const-string v0, "LAUNCH_GAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1313
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "placeId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 1318
    :goto_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1319
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1, v1, v1, v1}, Lcom/roblox/client/game/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 1320
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1316
    const-string v0, "rbx.glview"

    const-string v2, "No placeId for data model notification LAUNCH_GAME"

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    goto :goto_2

    .line 1323
    :cond_d
    const-string v0, "VIEW_MY_FEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1325
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "MY_FEED_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1326
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1328
    :cond_e
    const-string v0, "SEARCH_GAMES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1330
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "SEARCH_GAMES_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1331
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1334
    :cond_f
    const-string v0, "GAMES_SEE_ALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1336
    new-instance v0, Lcom/roblox/client/e/q;

    const-string v1, "GAMES_SEE_ALL_TAG"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;Z)V

    .line 1337
    invoke-virtual {v0, p2}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1340
    :cond_10
    const-string v0, "VIEW_SUB_PAGE_IN_MORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1342
    const-string v0, "Catalog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CATALOG_TAG"

    .line 1349
    :goto_3
    if-eqz v0, :cond_0

    .line 1350
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/q;

    invoke-direct {v2, v0}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1343
    :cond_11
    const-string v0, "BuildersClub"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1344
    new-instance v0, Lcom/roblox/client/j/a;

    const-string v2, "tabMore"

    invoke-direct {v0, p0, v2}, Lcom/roblox/client/j/a;-><init>(Lcom/roblox/client/m;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/roblox/client/j/a;->a()V

    move-object v0, v1

    goto :goto_3

    .line 1346
    :cond_12
    const-string v0, "Profile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "PROFILE_TAG"

    goto :goto_3

    .line 1347
    :cond_13
    const-string v0, "Friends"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "FRIENDS_TAG"

    goto :goto_3

    .line 1348
    :cond_14
    const-string v0, "Groups"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "GROUPS_TAG"

    goto :goto_3

    .line 1353
    :cond_15
    const-string v0, "ACTION_LOG_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1354
    new-instance v0, Lcom/roblox/client/j/b;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/b;-><init>(Lcom/roblox/client/m;)V

    invoke-virtual {v0}, Lcom/roblox/client/j/b;->b()V

    goto/16 :goto_0

    .line 1356
    :cond_16
    const-string v0, "LUA_HOME_PAGE_LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/roblox/client/b/d;->c(Z)V

    goto/16 :goto_0

    .line 1270
    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_17
    move-object v0, v1

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "rbx.glview"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    .line 270
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->f()V

    .line 273
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 277
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/roblox/client/FragmentGlView;->tryToFinishActivity(I)V

    .line 279
    invoke-super {p0}, Lcom/roblox/client/m;->onDestroy()V

    .line 280
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 624
    const-string v0, "rbx.glview"

    const-string v1, "onDestroyView:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 629
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/m;->onDestroyView()V

    .line 630
    return-void
.end method

.method public onGameLoaded(J)V
    .locals 3

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIsGameLoaded:Z

    .line 847
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onGameLoaded() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mOnGameEventListener:Lcom/roblox/client/FragmentGlView$b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/FragmentGlView$b;->b(J)V

    .line 852
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Lcom/roblox/client/m;->onLowMemory()V

    .line 438
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 439
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeOnLowMemory()V

    .line 441
    :cond_0
    return-void
.end method

.method public onLuaTextBoxChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 858
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onLuaTextBoxChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method public onLuaTextBoxPositionChanged()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 410
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/m;->onPause()V

    .line 411
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/http/b;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Lcom/roblox/client/m;->onResume()V

    .line 395
    invoke-static {}, Lcom/roblox/client/http/b;->a()V

    .line 397
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/engine/b;->a(Z)V

    .line 400
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 285
    const-string v0, "rbx.glview"

    const-string v1, "onStart:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeOnFragmentStart()V

    .line 288
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->enableNDKProfiler(Z)V

    .line 289
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0}, Lcom/roblox/client/m;->onStop()V

    .line 371
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: surfaceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeOnFragmentStop()V

    .line 374
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->enableNDKProfiler(Z)V

    .line 376
    invoke-static {}, Lcom/roblox/client/b;->bj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 380
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mInputListener:Lcom/roblox/engine/b;

    invoke-virtual {v0}, Lcom/roblox/engine/b;->a()V

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 389
    return-void
.end method

.method public promptNativePurchase(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1095
    iput-wide p1, p0, Lcom/roblox/client/FragmentGlView;->mPlayerPtr:J

    .line 1096
    iput-object p3, p0, Lcom/roblox/client/FragmentGlView;->mProductId:Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGoogleStoreMgr:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v3

    iget-object v6, p0, Lcom/roblox/client/FragmentGlView;->mGooglePurchaseListener:Lcom/roblox/client/purchase/c;

    move-object v1, p4

    move-object v2, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/FragmentGlView$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGlView$2;-><init>(Lcom/roblox/client/FragmentGlView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1115
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Lcom/roblox/client/FragmentGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 1117
    const-string v0, "GoogleStoreInitiate"

    const-string v1, "InGame"

    const-string v2, "FailedPlayStoreNotSetUp"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1119
    :cond_0
    const-string v0, "GoogleStoreInitiate"

    const-string v1, "InGame"

    const-string v2, "Started"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeRendering()V
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->hasValidSurfaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-nez v0, :cond_1

    .line 319
    const-string v0, "rbx.glview"

    const-string v1, "resumeRendering() startGraphics..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->updateSurface()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->resumeRenderingIfStopped()V

    goto :goto_0
.end method

.method public resumeRenderingIfStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;->hasValidSurfaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-eqz v0, :cond_0

    .line 334
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->isRenderingStopped:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "rbx.glview"

    const-string v1, "resumeRenderingIfStopped() resume..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-boolean v2, p0, Lcom/roblox/client/FragmentGlView;->isRenderingStopped:Z

    .line 337
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeRequestResumeRendering()V

    .line 338
    invoke-static {v2}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(Z)V

    .line 341
    :cond_0
    return-void
.end method

.method public shouldRespectDatamodelOrientation()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public showGameErrorDialogWithErrorId(I)V
    .locals 1

    .prologue
    .line 1174
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentGlView;->getCorrespondingErrorStringResourceId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentGlView;->showGameErrorDialog(I)V

    .line 1175
    return-void
.end method

.method public stopDataModel()V
    .locals 3

    .prologue
    .line 352
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDataModel: surfaceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    .line 360
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeShutDownGraphics(Landroid/view/Surface;)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeStopGame()V

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    .line 366
    return-void
.end method

.method public stopRendering()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->isRenderingStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 303
    iput-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->isRenderingStopped:Z

    .line 304
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeRequestStopRendering()V

    .line 305
    invoke-static {v1}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 890
    const-string v0, "rbx.glview"

    const-string v1, "surfaceChanged: ..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0, p3, p4}, Lcom/roblox/client/FragmentGlView;->updateSurfaceParams(II)V

    .line 893
    invoke-static {}, Lcom/roblox/client/b;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->updateSurface()V

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 902
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->updateSurface()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 944
    const-string v0, "rbx.glview"

    const-string v1, "surfaceCreated: ..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceCreated:Z

    .line 947
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(Z)V

    .line 948
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 952
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: surfaceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iput-boolean v3, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceCreated:Z

    .line 963
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 974
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-eqz v0, :cond_1

    .line 969
    iput-boolean v3, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    .line 970
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeShutDownGraphics(Landroid/view/Surface;)V

    .line 973
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->setTaskSchedulerBackgroundMode(Z)V

    goto :goto_0
.end method

.method public syncTextboxTextAndCursorPosition()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    if-nez v0, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 1367
    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 1368
    invoke-virtual {v1}, Lcom/roblox/client/RbxKeyboard;->getSelectionStart()I

    move-result v1

    .line 1366
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->syncTextboxTextAndCursorPosition2(Ljava/lang/String;I)V

    goto :goto_0

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 1372
    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 1373
    invoke-virtual {v1}, Lcom/roblox/client/RbxKeyboard;->getSelectionStart()I

    move-result v1

    .line 1371
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->syncTextboxTextAndCursorPosition(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public tryToFinishActivity(I)V
    .locals 4

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView;->mIs3DApp:Z

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const-string v1, "rbx.glview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToFinishActivity: call finish() on activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->setResult(I)V

    .line 463
    invoke-virtual {v0}, Landroid/support/v4/app/h;->finish()V

    .line 466
    :cond_0
    return-void
.end method

.method public updateSurface()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 910
    const-string v0, "rbx.glview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurface() isVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/FragmentGlView;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    if-nez v0, :cond_3

    .line 913
    iput v4, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    .line 914
    iput-boolean v3, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    .line 916
    sget-boolean v0, Lcom/roblox/client/FragmentGlView;->hasDoneGameGlobalInit:Z

    if-nez v0, :cond_0

    .line 917
    sput-boolean v3, Lcom/roblox/client/FragmentGlView;->hasDoneGameGlobalInit:Z

    .line 918
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeGameGlobalInit()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget v0, v0, Lcom/roblox/client/FragmentGlView$a;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 922
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-object v1, v1, Lcom/roblox/client/FragmentGlView$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-wide v2, v2, Lcom/roblox/client/FragmentGlView$a;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/roblox/client/FragmentGlView;->startApp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 923
    const-string v0, "startup"

    const-string v1, "dataModel"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-wide v2, v0, Lcom/roblox/client/FragmentGlView$a;->e:J

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-wide v4, v0, Lcom/roblox/client/FragmentGlView$a;->b:J

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-object v6, v0, Lcom/roblox/client/FragmentGlView$a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget-object v7, v0, Lcom/roblox/client/FragmentGlView$a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->gameParams:Lcom/roblox/client/FragmentGlView$a;

    iget v8, v0, Lcom/roblox/client/FragmentGlView$a;->a:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/roblox/client/FragmentGlView;->startGame(JJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 928
    :cond_3
    iget v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceState:I

    if-ne v0, v4, :cond_1

    .line 929
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 931
    iget-boolean v1, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    if-eqz v1, :cond_4

    .line 932
    iget v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeUpdateGraphics(Landroid/view/Surface;II)V

    goto :goto_0

    .line 935
    :cond_4
    const-string v1, "rbx.glview"

    const-string v2, "surfaceChanged: *** nativeStartUpGraphics ***"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iput-boolean v3, p0, Lcom/roblox/client/FragmentGlView;->mGraphicsHaveStarted:Z

    .line 937
    iget v1, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceWidth:I

    iget v2, p0, Lcom/roblox/client/FragmentGlView;->mSurfaceHeight:I

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeStartUpGraphics(Landroid/view/Surface;II)V

    goto :goto_0
.end method
