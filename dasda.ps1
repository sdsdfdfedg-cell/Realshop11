Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    Title="RealShop - FiveM Network Reset"
    Width="520" Height="300"
    WindowStartupLocation="CenterScreen"
    ResizeMode="NoResize"
    Background="#05080F"
    WindowStyle="None"
    AllowsTransparency="True">

  <Window.Resources>
    <DropShadowEffect x:Key="BlueGlow" Color="#00AAFF" BlurRadius="18" ShadowDepth="0" Opacity="0.85"/>
    <DropShadowEffect x:Key="BlueGlowSoft" Color="#0077CC" BlurRadius="10" ShadowDepth="0" Opacity="0.6"/>
    <DropShadowEffect x:Key="TextGlow" Color="#00CCFF" BlurRadius="12" ShadowDepth="0" Opacity="1"/>

    <Style x:Key="GamingButton" TargetType="Button">
      <Setter Property="Foreground" Value="#CCEFFF"/>
      <Setter Property="FontFamily" Value="Segoe UI Black"/>
      <Setter Property="FontSize" Value="13"/>
      <Setter Property="FontWeight" Value="Black"/>
      <Setter Property="Cursor" Value="Hand"/>
      <Setter Property="BorderThickness" Value="1.5"/>
      <Setter Property="Height" Value="42"/>
      <Setter Property="Template">
        <Setter.Value>
          <ControlTemplate TargetType="Button">
            <Border x:Name="Bd"
                    Background="{TemplateBinding Background}"
                    BorderBrush="{TemplateBinding BorderBrush}"
                    BorderThickness="{TemplateBinding BorderThickness}"
                    CornerRadius="6"
                    Effect="{StaticResource BlueGlowSoft}">
              <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
            </Border>
            <ControlTemplate.Triggers>
              <Trigger Property="IsMouseOver" Value="True">
                <Setter TargetName="Bd" Property="Effect" Value="{StaticResource BlueGlow}"/>
              </Trigger>
              <Trigger Property="IsPressed" Value="True">
                <Setter TargetName="Bd" Property="Opacity" Value="0.7"/>
              </Trigger>
            </ControlTemplate.Triggers>
          </ControlTemplate>
        </Setter.Value>
      </Setter>
    </Style>
  </Window.Resources>

  <Border BorderBrush="#0055AA" BorderThickness="1.5" CornerRadius="10" Effect="{StaticResource BlueGlow}">
    <Grid>
      <Grid.RowDefinitions>
        <RowDefinition Height="32"/>
        <RowDefinition Height="*"/>
        <RowDefinition Height="Auto"/>
        <RowDefinition Height="Auto"/>
        <RowDefinition Height="18"/>
      </Grid.RowDefinitions>

      <Border x:Name="TitleBar" Grid.Row="0" Background="#080D1A" CornerRadius="10,10,0,0">
        <Grid>
          <TextBlock Text="RealShop  ·  FiveM Network Reset"
                     Foreground="#5599DD" FontFamily="Segoe UI" FontSize="11"
                     VerticalAlignment="Center" Margin="12,0,0,0" FontWeight="SemiBold"/>
          <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" VerticalAlignment="Center" Margin="0,0,8,0">
            <Button x:Name="MinBtn" Content="—" Width="26" Height="20" Background="Transparent" BorderThickness="0"
                    Foreground="#5599DD" FontSize="11" Cursor="Hand" FontFamily="Segoe UI"/>
            <Button x:Name="CloseBtn" Content="✕" Width="26" Height="20" Background="Transparent" BorderThickness="0"
                    Foreground="#CC3355" FontSize="11" Cursor="Hand" FontFamily="Segoe UI" Margin="2,0,0,0"/>
          </StackPanel>
        </Grid>
      </Border>

      <StackPanel Grid.Row="1" VerticalAlignment="Center" HorizontalAlignment="Center" Margin="0,8,0,4">
        <TextBlock HorizontalAlignment="Center" Effect="{StaticResource TextGlow}">
          <Run Text="Real" Foreground="#FFFFFF" FontFamily="Segoe UI Black" FontSize="30" FontWeight="Black"/>
          <Run Text="Shop" Foreground="#00AAFF" FontFamily="Segoe UI Black" FontSize="30" FontWeight="Black"/>
        </TextBlock>
        <Border Background="#0A1628" BorderBrush="#0088FF" BorderThickness="1" CornerRadius="4"
                Padding="18,3" HorizontalAlignment="Center" Effect="{StaticResource BlueGlowSoft}">
          <TextBlock Text="NETWORK RESET" Foreground="#00CCFF" FontFamily="Segoe UI Black"
                     FontSize="13" FontWeight="Black" HorizontalAlignment="Center"/>
        </Border>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" Margin="0,8,0,0">
          <Border Background="#0A1628" BorderBrush="#0044AA" BorderThickness="1" CornerRadius="4" Padding="8,3" Margin="3,0">
            <StackPanel Orientation="Horizontal">
              <TextBlock Text="🚀 " FontSize="10"/>
              <TextBlock Text="FAST" Foreground="#00AAFF" FontFamily="Segoe UI" FontSize="10" FontWeight="Bold"/>
            </StackPanel>
          </Border>
          <Border Background="#0A1628" BorderBrush="#0044AA" BorderThickness="1" CornerRadius="4" Padding="8,3" Margin="3,0">
            <StackPanel Orientation="Horizontal">
              <TextBlock Text="🛡 " FontSize="10"/>
              <TextBlock Text="STABLE" Foreground="#00AAFF" FontFamily="Segoe UI" FontSize="10" FontWeight="Bold"/>
            </StackPanel>
          </Border>
          <Border Background="#0A1628" BorderBrush="#0044AA" BorderThickness="1" CornerRadius="4" Padding="8,3" Margin="3,0">
            <StackPanel Orientation="Horizontal">
              <TextBlock Text="🌐 " FontSize="10"/>
              <TextBlock Text="OPTIMIZED" Foreground="#00AAFF" FontFamily="Segoe UI" FontSize="10" FontWeight="Bold"/>
            </StackPanel>
          </Border>
          <Border Background="#0A1628" BorderBrush="#0044AA" BorderThickness="1" CornerRadius="4" Padding="8,3" Margin="3,0">
            <StackPanel Orientation="Horizontal">
              <TextBlock Text="⚡ " FontSize="10"/>
              <TextBlock Text="NO LAG" Foreground="#00AAFF" FontFamily="Segoe UI" FontSize="10" FontWeight="Bold"/>
            </StackPanel>
          </Border>
        </StackPanel>
      </StackPanel>

      <Border Grid.Row="2" Background="#080D1A" Margin="14,0,14,8" CornerRadius="4" Padding="10,5">
        <TextBlock x:Name="StatusText" Text="Ready — Select a mode to begin"
                   Foreground="#4488BB" FontFamily="Consolas" FontSize="11" HorizontalAlignment="Center"/>
      </Border>

      <Grid Grid.Row="3" Margin="14,0,14,0">
        <Grid.ColumnDefinitions>
          <ColumnDefinition/>
          <ColumnDefinition/>
          <ColumnDefinition/>
          <ColumnDefinition/>
        </Grid.ColumnDefinitions>
        <Button Grid.Column="0" x:Name="Mode1Btn" Margin="4,0" Style="{StaticResource GamingButton}"
                Background="#071428" BorderBrush="#0077CC">
          <StackPanel Orientation="Horizontal">
            <TextBlock Text="🚀 " FontSize="13"/>
            <TextBlock Text="MODE 1" Foreground="#88DDFF" FontFamily="Segoe UI Black" FontSize="12"/>
          </StackPanel>
        </Button>
        <Button Grid.Column="1" x:Name="Mode2Btn" Margin="4,0" Style="{StaticResource GamingButton}"
                Background="#071428" BorderBrush="#0077CC">
          <StackPanel Orientation="Horizontal">
            <TextBlock Text="🎯 " FontSize="13"/>
            <TextBlock Text="MODE 2" Foreground="#88DDFF" FontFamily="Segoe UI Black" FontSize="12"/>
          </StackPanel>
        </Button>
        <Button Grid.Column="2" x:Name="ClearBtn" Margin="4,0" Style="{StaticResource GamingButton}"
                Background="#071428" BorderBrush="#0077CC">
          <StackPanel Orientation="Horizontal">
            <TextBlock Text="🧹 " FontSize="13"/>
            <TextBlock Text="CLEAR" Foreground="#88DDFF" FontFamily="Segoe UI Black" FontSize="12"/>
          </StackPanel>
        </Button>
        <Button Grid.Column="3" x:Name="ExitBtn" Margin="4,0" Style="{StaticResource GamingButton}"
                Background="#1A0510" BorderBrush="#CC2244">
          <StackPanel Orientation="Horizontal">
            <TextBlock Text="⏻ " FontSize="13" Foreground="#FF4466"/>
            <TextBlock Text="EXIT" Foreground="#FF6680" FontFamily="Segoe UI Black" FontSize="12"/>
          </StackPanel>
        </Button>
      </Grid>

      <TextBlock Grid.Row="4" Text="FAST  —  STABLE  —  SAFE  —  SECURE"
                 Foreground="#223344" FontFamily="Segoe UI" FontSize="9"
                 HorizontalAlignment="Center" VerticalAlignment="Center" Margin="0,6,0,0"/>
    </Grid>
  </Border>
</Window>
"@

$reader     = [System.Xml.XmlNodeReader]::new($xaml)
$window     = [System.Windows.Markup.XamlReader]::Load($reader)

$StatusText = $window.FindName("StatusText")
$TitleBar   = $window.FindName("TitleBar")
$MinBtn     = $window.FindName("MinBtn")
$CloseBtn   = $window.FindName("CloseBtn")
$Mode1Btn   = $window.FindName("Mode1Btn")
$Mode2Btn   = $window.FindName("Mode2Btn")
$ClearBtn   = $window.FindName("ClearBtn")
$ExitBtn    = $window.FindName("ExitBtn")

$TitleBar.Add_MouseLeftButtonDown({ $window.DragMove() })
$MinBtn.Add_Click({ $window.WindowState = [System.Windows.WindowState]::Minimized })
$CloseBtn.Add_Click({ $window.Close() })
$ExitBtn.Add_Click({ $window.Close() })

$Mode1Btn.Add_Click({

    $StatusText.Text = "⚡ MODE 1 Running..."
    $StatusText.Foreground = [System.Windows.Media.Brushes]::LightGreen

    $tempReg = "$env:TEMP\real_network_tweak.reg"

@"
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient]
"EnableMulticast"=dword:00000000
"EnableDevolutionLevelControl"=dword:00000001
"DomainNameDevolutionLevel"=dword:00003a98
"NameServer"="192.168.1.100"

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces]

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Dnscache]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc]

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT]

"@ | Out-File -Encoding ASCII $tempReg

    Start-Process powershell -Verb RunAs -ArgumentList @(
        '-NoExit',
        '-Command',
        @"

ipconfig /flushdns
ipconfig /release
ipconfig /renew

netsh winsock reset
netsh int ip reset

reg import "$tempReg"

Get-NetAdapter | Restart-NetAdapter -Confirm:`$false

Write-Host ""
Write-Host "===================================="
Write-Host "MODE 1 COMPLETE"
Write-Host "ALL REGISTRY IMPORTED"
Write-Host "Restart Recommended"
Write-Host "===================================="

"@
    )

    $StatusText.Text = "✅ MODE 1 Complete"

})

$Mode2Btn.Add_Click({

    $StatusText.Text = "🎯 MODE 2 Running..."
    $StatusText.Foreground = [System.Windows.Media.Brushes]::DeepSkyBlue

    Add-Type -AssemblyName System.Windows.Forms

    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowser.Description = "Select Folder To Save CitizenFX.ini"

    if ($FolderBrowser.ShowDialog() -eq "OK") {

        $SelectedFolder = $FolderBrowser.SelectedPath
        $IniPath = Join-Path $SelectedFolder "CitizenFX.ini"

@"
[Game]
IVPath=C:\GTAV
UpdateChannel=production
PoolSizesIncrease={"AnimStore":20480,"AttachmentExtension":430,"CMoveObject":600,"EntityDescPool":20480,"FragmentStore":14000,"InteriorProxy":450,"LightEntity":1000,"Object":2000,"ObjectIntelligence":512,"OcclusionInteriorInfo":20,"OcclusionPathNode":5000,"OcclusionPortalEntity":750,"OcclusionPortalInfo":750,"PortalInst":225,"ScaleformStore":200,"StaticBounds":5000,"TxdStore":50000,"netGameEvent":400}
ReplaceExecutable=0
SavedBuildNumber=3095

[Addon]
net_maxMtu 1200
vid_budgetScale 0
ui_maxQueriesPerMinute 15
disable_vsync 1
disable_fog 1
disable_ambient_occlusion 1

[Renderer]
DisableShadowOptimizations=false
EnablePresentationOptimizations=true
ForceRenderAheadLimit=1
DisableNvLowLatency=false
SwapChainUseWaitableSwapChain=true

[Streaming]
MaxStreamingRequests=50
MaxStreamingMemory=2000
StreamerMode=0
"@ | Set-Content $IniPath

        Start-Process powershell -Verb RunAs -ArgumentList @(
            '-Command',
            @'

# ====================================
# Disable Unnecessary Services
# ====================================

$services = @(
    "DiagTrack",
    "dmwappushservice",
    "SysMain",
    "WerSvc",
    "WSearch",
    "Fax",
    "MapsBroker",
    "RetailDemo",
    "RemoteRegistry",
    "lfsvc",
    "TrkWks",
    "PcaSvc",
    "WMPNetworkSvc",
    "XblAuthManager",
    "XblGameSave",
    "XboxNetApiSvc"
)

foreach ($svc in $services) {

    Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue

    Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue

}

Write-Host ""
Write-Host "===================================="
Write-Host "SERVICES DISABLED"
Write-Host "SYSTEM OPTIMIZED"
Write-Host "===================================="

'@
        )

        $StatusText.Text = "✅ MODE 2 Complete"

    }
    else {

        $StatusText.Text = "❌ Operation Cancelled"

    }

})

# Handle minimize from title bar buttons (found by traversing visual tree)
$ClearBtn.Add_Click({

    $StatusText.Text = "🧹 Restoring Default Settings..."
    $StatusText.Foreground = [System.Windows.Media.Brushes]::Orange

    Start-Process powershell -Verb RunAs -ArgumentList @(
        '-NoExit',
        '-Command',
        @'

# ====================================
# Restore Services
# ====================================

$services = @(
    "DiagTrack",
    "dmwappushservice",
    "SysMain",
    "WerSvc",
    "WSearch",
    "Fax",
    "MapsBroker",
    "RetailDemo",
    "RemoteRegistry",
    "lfsvc",
    "TrkWks",
    "PcaSvc",
    "WMPNetworkSvc",
    "XblAuthManager",
    "XblGameSave",
    "XboxNetApiSvc"
)

foreach ($svc in $services) {

    Set-Service -Name $svc -StartupType Manual -ErrorAction SilentlyContinue

    Start-Service -Name $svc -ErrorAction SilentlyContinue

}

# ====================================
# Remove Registry Tweaks
# ====================================

reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" /f

# ====================================
# Reset Network
# ====================================

netsh winsock reset
netsh int ip reset

ipconfig /flushdns

Get-NetAdapter | Restart-NetAdapter -Confirm:`$false

Write-Host ""
Write-Host "===================================="
Write-Host "DEFAULT SETTINGS RESTORED"
Write-Host "RESTART RECOMMENDED"
Write-Host "===================================="

'@
    )

    $StatusText.Text = "✅ Default Settings Restored"

})

# Find minimize button via tag matching approach - use routed events instead
$window.AddHandler(
    [System.Windows.Controls.Button]::ClickEvent,
    [System.Windows.RoutedEventHandler]{
        param($sender, $e)
        if ($sender.Content -eq "—") {
            $window.WindowState = [System.Windows.WindowState]::Minimized
        }
    }
)

[void]$window.ShowDialog()