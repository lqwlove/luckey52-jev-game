type IconProps = { className?: string };

export function IconUser({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <circle cx="12" cy="8" r="3.2" stroke="currentColor" strokeWidth="1.7" />
      <path d="M5.5 19.2c1.2-3.2 3.6-4.8 6.5-4.8s5.3 1.6 6.5 4.8" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" />
    </svg>
  );
}

export function IconJev({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <rect x="4.2" y="4.2" width="15.6" height="15.6" rx="4" stroke="currentColor" strokeWidth="1.7" />
      <path d="M8.2 10.2h2.2M13.6 10.2h2.2" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M9 15c1 .9 2 .9 3 .9s2 0 3-.9" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" />
      <path d="M12 4.2V2.6M12 21.4v-1.6M2.6 12h1.6M19.8 12h1.6" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

export function IconLock({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <rect x="5.5" y="10.5" width="13" height="9" rx="2" stroke="currentColor" strokeWidth="1.7" />
      <path d="M8 10.5V8a4 4 0 0 1 8 0v2.5" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" />
    </svg>
  );
}

export function IconPulse({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <circle cx="12" cy="12" r="7.2" stroke="currentColor" strokeWidth="1.5" />
      <circle cx="12" cy="12" r="3.2" stroke="currentColor" strokeWidth="1.7" />
    </svg>
  );
}

export function IconCheck({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <path d="M5.5 12.5 10 17l8.5-9.5" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

export function IconCross({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <path d="M7 7l10 10M17 7 7 17" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

export function IconBolt({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <path d="M13 3 6.5 13h5L11 21l6.5-11h-5L13 3Z" stroke="currentColor" strokeWidth="1.7" strokeLinejoin="round" />
    </svg>
  );
}

export function IconTrophy({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <path d="M8 4h8v4a4 4 0 0 1-8 0V4Z" stroke="currentColor" strokeWidth="1.7" />
      <path d="M8 6H5.5A2.5 2.5 0 0 0 8 8.8M16 6h2.5A2.5 2.5 0 0 1 16 8.8" stroke="currentColor" strokeWidth="1.7" />
      <path d="M12 12v3M9 20h6M10 17h4" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" />
    </svg>
  );
}

export function IconList({ className }: IconProps) {
  return (
    <svg className={className} viewBox="0 0 24 24" width="24" height="24" fill="none" aria-hidden="true">
      <path d="M8 7h11M8 12h11M8 17h11" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" />
      <circle cx="4.8" cy="7" r="1" fill="currentColor" />
      <circle cx="4.8" cy="12" r="1" fill="currentColor" />
      <circle cx="4.8" cy="17" r="1" fill="currentColor" />
    </svg>
  );
}
